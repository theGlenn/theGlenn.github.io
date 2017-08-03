#!/bin/bash
gulp build
git subtree push --prefix dist origin master

BUILDS=`git rev-list --all --count`
git add .
git commit -m "Post build #$BUILDS"
