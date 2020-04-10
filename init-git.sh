#!/bin/bash
# Title: init-git.sh
# Author: Michael Martin
# Desc: Script to quickly setup a git repo


project=${1:- "project"}
comment=${2:- "Added content"}


mkdir $project;
cd $project;
echo "# $project" > README.md
echo "./.*" > .gitignore;
touch LICENSE.md 

git init;
git add .
git commit -m "$comment"
git remote add git@github.com:omhm-consults/$project.git
git push -u origin master

