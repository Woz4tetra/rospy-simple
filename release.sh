#!/bin/bash

cd index || exit
if [ -e index.html ]; then
    BRANCH=gh-pages
else
    BRANCH="$(uname -s)"
fi
rm -rf .git
git init
git checkout -b "$BRANCH"
git add .
git commit -m "Release $(date --rfc-3339=sec)"
git remote add origin git@github.com:Woz4tetra/rospy-simple.git
git push -f origin "$BRANCH"

