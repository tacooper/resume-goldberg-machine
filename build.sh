#!/bin/bash
set -eu

# define constants
README_FILE="README.md"
RESUME_FILE="Tom_Cooper_resume.md"

display_help() {
    echo
    echo "usage: ${0} [options]"
    echo "options:"
    echo "  -e  Print versions for environment tools."
    echo "  -g  Generate resume."
    echo "  -h  Print this usage for help."
    echo "  -v  Enable verbose output."
}

display_environment_versions() {
    echo
    echo "* Git:"
    git --version
    echo
    echo "* Python:"
    python3 --version
    echo
    echo "* Visual Studio Code:"
    code --version
    echo
}

generate_resume() {
    # clean resume file
    rm -f ${RESUME_FILE}

    # append title section to resume file
    output_to_file "# Tom Cooper"
    output_to_file
    output_to_file "## About"
    output_to_file
    output_to_file "Location: Baltimore, MD, USA <br>"
    output_to_file "Email: tacooper@vt.edu <br>"
    output_to_file "Website: https://github.com/tacooper <br>"
    output_to_file "Education: Virginia Tech, Electrical Engineering (B.S. 2010, M.S. 2012) <br>"

    # generate and append date to resume file
    DATE=$(date "+%m/%d/%Y")
    output_to_file
    output_to_file "---"
    output_to_file
    output_to_file "Generated by https://github.com/tacooper/resume-goldberg-machine on ${DATE}."

    # replace existing date in Readme file
    sed -i -r "s|[0-9]{2}/[0-9]{2}/[0-9]{4}|${DATE}|g" ${README_FILE}
}

output_to_file() {
    # append new line and optional argument to resume file
    if [[ $# -eq 0 ]]; then
        echo >> ${RESUME_FILE}
    else
        echo "$1" >> ${RESUME_FILE}
    fi
}

# handle each option specified on command line
while getopts ":eghv" FLAG; do
    case ${FLAG} in
        v)
            # enable verbose output
            set -x
            ;;
        e)
            display_environment_versions
            ;;
        g)
            generate_resume
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
