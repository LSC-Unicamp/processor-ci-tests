# Description: Verificator for the processor-ci-tests
# Enter a path provided in this program and recursively all the tests .hex for each leaf directory create a .xml file with the results
# of the tests in that folder the XML files are saved in the test-reports directory with the name
# results_{test_path_name}_{timestamp}.xml

#test_extensão_tipo_timestamp.xml

# Adiciona o diretório raiz do projeto ao sys.path


import os
import sys
import file as f
import argparse
import xmlrunner


sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), "../..")))


from processor_ci_communication.core.serial import ProcessorCIInterface

MAX_SIZE = 16


class Verificator:
    def __init__(self, path, port, baudrate, timeout):
        self.path = path
        self.interface = ProcessorCIInterface(port, baudrate, timeout)
        self.id = self.interface.get_module_id()
        self.interface.set_timeout(timeout)
        self.interface.set_execution_end_address(60)

    
    def clean_up(self, size, max_size):
        size = size * 4
        max_size = max_size * 4
        for i in range(size, max_size - 4, 4):
            self.interface.write_memory(i, 0)


    def run_tests(self):
        tests = []
        paths = f.list_find_paths(self.path)

        for path in paths:
            tests.append(f.read_files_in_dir(path))
        print("Tests: ", tests)

        for path_tests in tests:
            test_path = path_tests[2]
            test_case_name = test_path.split("/")[-1]
            print("Test_case_name: ", test_case_name) #test_case_name = nome do diretório

            REPORT_FILE = f'{test_path}/results.xml' # Tem que ficar na raiz
            
            test_id = 0
            for test in path_tests[0]: #path_tests[0] = tests | path_tests[1] = answers | path_tests[2] = path
                test_size = test[1]
                self.clean_up(test_size, MAX_SIZE)
                test_expected = path_tests[1][test_id][0]
                print("Test_expected: ", test_expected)
                print("Test_size: ", test_size)
                self.interface.write_from_accumulator(test_size, test[0])
                self.interface.execute_until_stop()
                return_value = self.interface.read_memory(60)
                print("Return_value: ", return_value)
                result = "PASS" if return_value == test_expected else "FAIL"
                print(f"Test {test_case_name}_{test_id}: {result}")
                
                with open(REPORT_FILE, 'a') as report:
                    report.write(f"<testcase name='{test_case_name}_{test_id}' result='{result}'/>\n")
                    test_id += 1
        return 0

#default to test:
#python3 verificator.py -p /dev/ttyACM0 -b 115200 -t 2
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--port", "-p", type=str, help="Porta de comunicação", required=True)
    parser.add_argument("--baudrate", "-b", type=int, help="Baudrate de comunicação", required=True)
    parser.add_argument("--timeout", "-t", type=int, help="Tempo limite de execução", required=True)

    args = parser.parse_args()
    
    verifier = Verificator("/home/victor/processor_ci/processor-ci-tests/test_runner/testing_testes", args.port, args.baudrate, args.timeout)
    
    #with open(f"{verifier.path}/results.xml", 'w') as report:
    #    report.write("<testsuite>\n")
    verifier.run_tests()
    #    report.write("</testsuite>\n")
    return 0


if __name__ == "__main__":
    main()
