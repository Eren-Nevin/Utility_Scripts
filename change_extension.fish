#! /usr/bin/env fish
set from $argv[1]
set to $argv[2]
for f in *;
    mv $f (echo $f | sed s/'\.'$from'$'/'\.'$to/g)
end
