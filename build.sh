#!/bin/bash
set -eu

display_help() {
    echo
    echo "Usage: ${0} -[ehv]"
    echo "Options:"
    echo "  -e  Print versions for environment tools."
    echo "  -h  Print this usage for help."
    echo "  -v  Enable verbose output."
}

display_environment_versions() {
    echo
    echo "* Git:"
    git --version
    echo
    echo "* Visual Studio Code:"
    code --version
}

while getopts ":ehv" ARGS; do
    case ${ARGS} in
        v)
            # enable verbose output
            set -x
            ;;
        e)
            display_environment_versions
            ;;
        h)
            display_help
            exit 1
            ;;
        \? | *)
            echo "Invalid option: -${OPTARG}" 1>&2
            exit 1
            ;;
    esac
done

exit 0
