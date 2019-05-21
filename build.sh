#!/bin/bash
set -eu

display_help() {
    echo
    echo "Usage: ${0} -[hv]"
    echo "Options:"
    echo "  -h  Print this usage for help."
    echo "  -v  Enable verbose output."
}

while getopts ":vh" ARGS; do
    case ${ARGS} in
        v)
            # enable verbose output
            set -x
            ;;
        \?)
            echo "Invalid option: -${OPTARG}" 1>&2
            exit 1
            ;;
        h | *)
            # display help text
            display_help
            exit 1
            ;;
    esac
done

exit 0
