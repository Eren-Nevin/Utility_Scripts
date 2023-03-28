#! /usr/bin/env awk -f
# This program would make each word on each line title case.
{
    for (i=1;i<=NF;i++) 
    {
        printf("%s%s ", toupper(substr($i,1,1)), substr($i,2)); 
        if (NF==i) {print ""}
    } 
}
