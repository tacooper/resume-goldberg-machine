#!/usr/bin/python3

from skills import Skill

def main():
    # display each skill in unordered list
    for skill in Skill:
        print("* {}".format(skill.value))

if __name__ == "__main__":
    main()
