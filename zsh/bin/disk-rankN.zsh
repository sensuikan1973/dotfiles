#!/usr/bin/env zsh
line_count=$1

tmp_file=".disk-rankN.tmp"

du -ah | sort --reverse --numeric-sort --key=1 > $tmp_file
head -n $line_count $tmp_file
rm $tmp_file
