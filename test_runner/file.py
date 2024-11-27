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
        if path.endswith("/memory"):
            path = path[:-7]  # Remove the '/memory' suffix
        files = []

        file_test = []
        for entry in os.scandir(f"{path}/memory"):
            if entry.is_file() and entry.name.endswith(".hex"):
                file_test.append(read_file(entry.path))

        file_answer = []
        for entry in os.scandir(f"{path}/reference"):
            if entry.is_file() and entry.name.endswith(".hex"):
                file_answer.append(read_file(entry.path))

        files.append(file_test)
        files.append(file_answer)
        files.append(path)
        return files
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
