#!/usr/bin/python3

import os

# define constants
PROJECTS_DIR = "data/projects"

def main():
    # determine all file names in projects folder
    for file_name in os.listdir(PROJECTS_DIR):
        # build full path name to each file in projects folder
        path_name = os.path.join(PROJECTS_DIR, file_name)

        # open each project file in read-only mode
        with open(path_name, "r") as file:
            # display text from each project file in bulleted list
            text = file.read()
            print("* {}".format(text))

if __name__ == "__main__":
    main()
