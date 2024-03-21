#!/bin/bash
# This script deletes all LaTeX auxiliary files in the current directory and its subdirectories.
# There is an option to delete pdf files as well.

if [ "$1" == "pdf" ]; then
    # List of LaTeX auxiliary file extensions
    aux_files=("*.aux" "*.bbl" "*.blg" "*.fdb_latexmk" "*.fls" "*.log" "*.out" "*.pdf" "*.synctex.gz" "*.toc")
else
    aux_files=("*.aux" "*.bbl" "*.blg" "*.fdb_latexmk" "*.fls" "*.log" "*.out" "*.synctex.gz" "*.toc")
fi

# Loop over the file extensions and delete the files
for ext in "${aux_files[@]}"; do
    find . -type f -name "$ext" -delete
done