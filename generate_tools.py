#!/usr/bin/python3

from tools import Tool

def main():
    # append each tool into comma-separated list
    tool_list = ""
    for tool in Tool:
        tool_list += tool.value + ", "

    # display list excluding final comma
    print(tool_list[:-2])

if __name__ == "__main__":
    main()
