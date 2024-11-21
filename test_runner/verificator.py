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


sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), "../..")))


from processor_ci_communication.core.serial import ProcessorCIInterface


class Verificator:
    def __init__(self, path, port, baudrate, timeout):
        self.path = path
        self.interface = ProcessorCIInterface(port, baudrate, timeout)


    def run_tests(self):
        tests = []
        paths = f.list_find_paths(self.path)
        #print(paths)
        for path in paths:
            tests.append(f.read_files_in_dir(path))
        #print(tests)



#default to test:
#python3 verificator.py -p /dev/ttyACM0 -b 115200 -t 2
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--port", "-p", type=str, help="Porta de comunicação", required=True)
    parser.add_argument("--baudrate", "-b", type=int, help="Baudrate de comunicação", required=True)
    parser.add_argument("--timeout", "-t", type=int, help="Timeout de comunicação", required=True)
    args = parser.parse_args()

    verifier = Verificator("/home/victor/processor_ci/processor-ci-tests/test_runner/testing_testes", args.port, args.baudrate, args.timeout)
    verifier.run_tests()
    return 0


if __name__ == "__main__":
    main()
