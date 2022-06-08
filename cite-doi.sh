#!/bin/sh
# pass doi url i.e. https://doi.org/10.1186/s13750-021-00232-0
citation-js --output-style bibtex --output-type string --url $1

