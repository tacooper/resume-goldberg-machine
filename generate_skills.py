#!/usr/bin/python3

from skills import Skill

def main():
    # display each skill as entry in table
    for skill in Skill:
        print("{0} | [![{1}%](proficiency/progress-overall-{1}.png)](#)".format(
            skill.value.name, skill.value.proficiency))

if __name__ == "__main__":
    main()
