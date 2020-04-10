#!/bin/bash
# Title: init-git.sh
# Author: Michael Martin
# Desc: Script to quickly setup a git repo


comment=${1:- "Added content"}

git init;

echo "./.*" > .gitignore;
git add .
git commit -m "$comment"
