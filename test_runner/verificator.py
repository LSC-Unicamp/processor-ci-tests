# Description: Verificator for the processor-ci-tests
# Enter a path provided in this program and recursively all the tests .hex for each leaf directory create a .xml file with the results
# of the tests in that folder the XML files are saved in the test-reports directory with the name
# results_{test_path_name}_{timestamp}.xml

import os
from processor_ci_communication.core.serial import ProcessorCIInterface
import test_runner.file as f


class Verificator:
    def __init__(self, path):
        self.path = path
        self.interface = ProcessorCIInterface()
        self.interface.open()

    def run_tests(self):
        paths = f.get_all_test_paths(self.path)
        print(paths)


def main():
    verifier = Verificator("C:/Users/Usuario/Documents/processor-ci-tests/test_runner")
    verifier.run_tests()
    return 0


if __name__ == "__main__":
    main()
