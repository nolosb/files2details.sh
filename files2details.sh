#!/bin/bash

DIR_IN="files"

for FILE in $DIR_IN/*; do
DETAILS="$DETAILS\
<details>\
<summary>$(basename $FILE)</summary>\
<div>$(txt2html --extract --capstag '' --preserve_indent $FILE)</div>\
</details>"  
done

echo "$DETAILS" > details.html

