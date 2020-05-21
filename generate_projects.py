#!/usr/bin/python3

import os
from data.skills import Skill
from data.tools import Tool

# define constants
PROJECTS_DIR = "data/projects"

def main():
    # determine all file names in projects folder
    for file_name in os.listdir(PROJECTS_DIR):
        # build full path name to each file in projects folder
        path_name = os.path.join(PROJECTS_DIR, file_name)

        # open each project file in read-only mode
        with open(path_name, "r") as file:
            # read text from each project file
            text = file.read()

            # replace all skill enum names with stylized values in each project file
            for skill in Skill:
                text = text.replace("[{}]".format(skill.name), "`{}`".format(skill.value.name))

            # replace all tool enum names with stylized values in each project file
            for tool in Tool:
                text = text.replace("[{}]".format(tool.name), "`{}`".format(tool.value))

            # display stylized text from each project file in bulleted list
            print("* {}".format(text))

if __name__ == "__main__":
    main()
