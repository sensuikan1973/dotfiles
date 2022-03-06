#!/usr/bin/env zsh
line_count=$1

tmp_file=".find-bigN.tmp"

find . -type f -exec ls -sh {} \; | sort --reverse --numeric-sort > $tmp_file
head -n $line_count $tmp_file
rm $tmp_file
