#!/bin/bash
set -eu

display_help() {
    echo
    echo "usage: ${0} [options]"
    echo "options:"
    echo "  -e  Print versions for environment tools."
    echo "  -h  Print this usage for help."
    echo "  -v  Enable verbose output."
}

display_environment_versions() {
    echo
    echo "* Git:"
    git --version
    echo
    echo "* Python:"
    python --version
    echo
    echo "* Visual Studio Code:"
    code --version
}

# handle each option specified on command line
while getopts ":ehv" FLAG; do
    case ${FLAG} in
        v)
            # enable verbose output
            set -x
            ;;
        e)
            display_environment_versions
            ;;
        h)
            display_help
            ;;
        *)
            display_help
            exit 1
            ;;
    esac
done

# ensure at least one option exists
if [[ $# -eq 0 ]]; then
    echo "Specify at least one option!"
    exit 1
fi

exit 0
