#!/bin/bash

## Create Vagrant Project


project=$1
box=$2

mkdir $project

printf "# vagrant-$project" > $project/README.md
printf ".vagrant\n.gitignore" > $project/.gitignore

vagrant init $box;

bash /usr/local/bin/init-git.sh