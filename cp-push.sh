#!/bin/bash
# Title: cp-push.sh
# Author: Michael Martin
# Desc: Script to copy content and push it to a repo


comment=${1:- "ADD_OLD_PATH"}
comment=${2:- "ADD_NEW_PATH"}
comment=${3:- "Added Content"}

function gitPush(){
    git add .;
    git commit -m "$comment";
    git push;
}

cp $old_path $new_path;
cd $new_path;
gitPush;
