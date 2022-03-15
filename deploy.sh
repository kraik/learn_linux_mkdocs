#!/bin/bash

rm .gitignore
git config user.name 'Travis' && git config user.email 'noreply@ibm.com'
git add site && git commit -m "Travis deployment of MKDocs Documentation to Github Pages."
cd ..
git subtree split --prefix mkdocs/site -b gh-pages
git push -f origin gh-pages:gh-pages
