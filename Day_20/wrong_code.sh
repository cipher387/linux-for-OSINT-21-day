#!/bin/bash
## Example: ShellCheck can detect some higher level semantic problems

while getopts "nf:" param
do
  case "$param" in
    f) file="$OPTARG" ;;
    v) set -x ;;
  esac
done

case "$file" in
  *.gz) gzip -d "$file" ;;
  *.zip) unzip "$file" ;;
  *.tar.gz) tar xzf "$file" ;;
  *) echo "Unknown filetype" ;;
esac

if [[ "$$(uname)" == "Linux" ]]
then
  echo "Using Linux"
fi
