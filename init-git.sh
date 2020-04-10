#!/bin/bash
# Title: init-git.sh
# Author: Michael Martin
# Desc: Script to quickly setup a git repo

project=$1
comment=${2:- "Initialized $project"}
echo "Initializing and pushing to repo $project"

git init;
git add .
git commit -m "$comment"
git remote add origin git@github.com:omhm-consult/$project.git
git push -u origin master

