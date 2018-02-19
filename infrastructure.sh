#!/bin/bash
find . -type f  -exec du -h {} + | sort -r -h | head -10
cd Desktop
for f in *; do 
[[ -f $f ]] && 
    if [[ $f =~ \. ]]; then
	str="$HOME/Documents/${f##*.}"
        mkdir -p $str && 
        mv "$f" $str/; 
    fi; 
done
