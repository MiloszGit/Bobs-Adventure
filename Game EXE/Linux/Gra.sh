#!/bin/sh
echo -ne '\033c\033]0;Gra\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Gra.x86_64" "$@"
