#! /usr/bin/env python3
import sys

with open(f'{sys.argv[1]}') as my_file:
    opened = my_file.read()
    result = []
    for line in opened.splitlines():
        result.append(f'{len(result)+1} {line}')
    print('\n'.join(result))

