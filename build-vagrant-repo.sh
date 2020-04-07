#!/bin/bash

## Create Vagrant Project


project=$1
box=$2

mkdir $project

printf "# vagrant-$project" > $project/README.md
printf ".vagrant\n.gitignore" > $project/.gitignore

vagrant init $box;

git init 
git add .
git commit -m "Initialized $project $box"
