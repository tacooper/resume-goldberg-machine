#!/usr/bin/python3

import enum

class TableEntry():
    def __init__(self, name, proficiency):
        self.name = name
        self.proficiency = proficiency

class Skill(enum.Enum):
    EMBEDDED_C = TableEntry("Embedded C", 90)
    PYTHON = TableEntry("Python", 90)
    JAVA = TableEntry("Java", 90)
    JAVA_SCRIPT = TableEntry("JavaScript", 90)
    HTML = TableEntry("HTML", 70)
    CSS = TableEntry("CSS", 70)
    C_PLUS_PLUS = TableEntry("C++", 70)
    BASH_SHELL = TableEntry("Bash Shell", 70)
    GIT = TableEntry("Git", 70)
    ANDROID = TableEntry("Android", 50)
    C_SHARP = TableEntry("C#", 50)
    MATLAB = TableEntry("Matlab", 10)
