import os
import sys

current_path = os.getcwd()
page_size = 16
files = os.listdir(f"{current_path}/memory/")
references = os.listdir(f"{current_path}/reference/")
memory_file = "memory.hex"
reference_file = "reference.hex"


def generate_reference_file() -> None:
    file = open(reference_file, "w")

    for i in references:
        temp_file = open(f"{current_path}/reference/{i}", "r")

        for j in temp_file.readlines():
            file.write(f"{j}\n")

        temp_file.close()

    file.close()


def generate_memory_file() -> None:
    file = open(memory_file, "w")

    for i in files:
        temp_file = open(f"{current_path}/memory/{i}", "r")

        counter = 0

        for j in temp_file.readlines():
            counter += 1
            file.write(j)

        for i in range(16 - counter):
            file.write("00000000\n")

        temp_file.close()

    file.close()


def main() -> None:
    generate_memory_file()
    generate_reference_file()


if __name__ == "__main__":
    r = os.system("./compile.sh")
    number_of_tests = len(files)

    print(
        f"\nNumero de testes: {number_of_tests}\n"
        f"Tamanho do arquivo de memoria em palavras: {number_of_tests * 16}\n"
        f"Tamanho do arquivo de memoria em bytes: {number_of_tests * 64}"
    )
    main()
