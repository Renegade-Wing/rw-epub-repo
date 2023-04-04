#!/bin/bash
pwd
cd .. && cd $1;
zip -rX ../$2.epub mimetype META-INF EPUB;