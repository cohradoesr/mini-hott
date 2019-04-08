#!/bin/sh

gsed -i -r "/(url|doi)/ s/\{.?(.)\}/\1/g" _bibliography/library-temp.bib
gsed -i -r "s/journaltitle/journal     /g" _bibliography/library-temp.bib
gsed -i -r "s/@inbook/@incollection/g" _bibliography/library-temp.bib
gsed -i -r "/(file|month)/d" _bibliography/library-temp.bib
