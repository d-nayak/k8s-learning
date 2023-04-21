#!/bin/bash
tree -H '.' -L 1 --noreport --dirsfirst -T 'INDEX!' -s -D --charset utf-8 -o index.html
