import os
import glob


def read_file(name):
    if not os.path.isfile(name):
        raise FileNotFoundError(f"Error: The file '{name}' was not found.")
    with open(name) as file:
        data = []
        for line in file:
            data.append(int(line.replace("\n", ""), 16))
    return data, len(data)


def read_files_in_dir(path):
    try:
        file = [read_file(file) for file in glob.glob(f"{path}/*.hex", recursive=True)]
        file.append(path)
        return file
    except FileNotFoundError:
        print(f"Error: The directory '{path}' was not found.")
        return []
    except Exception as e:
        print(f"Error: {e}")
        return []


# return a list of all the paths with a directory named 'memory' in the path
def list_find_paths(path):
    return {
        os.path.dirname(file)
        for file in glob.glob(f"{path}/**/memory/*.hex", recursive=True)
    }
