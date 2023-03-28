#! /bin/sh
pbpaste | \
    gawk '/^$/ {print "\n"} {gsub(/^ +/,""); printf("%s", $0)}' - | pbcopy
