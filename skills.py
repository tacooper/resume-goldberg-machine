#!/usr/bin/python3

import enum

class TableEntry():
    def __init__(self, name, proficiency):
        self.name = name
        self.proficiency = proficiency

class Skill(enum.Enum):
    C_CPP = TableEntry("C/C++", "")
    PYTHON = TableEntry("Python", "")
    JAVA = TableEntry("Java", "")
    ANDROID = TableEntry("Android", "")
    BASH_SHELL = TableEntry("Bash Shell", "")
    GIT = TableEntry("Git", "")
    MATLAB = TableEntry("Matlab", "")
