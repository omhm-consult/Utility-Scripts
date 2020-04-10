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
git remote add origin git@github.com:omhm-consult/$project.git
git push -u origin master

