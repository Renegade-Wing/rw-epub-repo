#!/bin/bash
pwd
cd $1;
pwd
pandoc -f markdown+escaped_line_breaks -o $2.epub -c styles/styles.css chapters/*.md --epub-metadata template.opf --template markdown-template.html 