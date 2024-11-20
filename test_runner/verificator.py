# Description: Verificator for the processor-ci-tests
# Enter a path provided in this program and recursively all the tests .hex for each leaf directory create a .xml file with the results
# of the tests in that folder the XML files are saved in the test-reports directory with the name
# results_{test_path_name}_{timestamp}.xml

#test_extensão_tipo_timestamp.xml

import os
import file as f



class Verificator:
    def __init__(self, path):
        self.path = path
        #self.interface = ProcessorCIInterface()
        #self.interface.open()


    def run_tests(self):
        tests = []
        paths = f.list_find_paths(self.path)
        print(paths)
        for path in paths:
            tests.append(f.read_files_in_dir(path))
        print(tests)


def main():
    verifier = Verificator("/eda/processor-ci-tests/test_runner/testing_testes")
    verifier.run_tests()
    return 0


if __name__ == "__main__":
    main()
