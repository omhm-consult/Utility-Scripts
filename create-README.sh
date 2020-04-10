#!/bin/bash
# Title: Create-README.sh
# Author: mmartin@omhm.org
# Desc: Creates README.md Template
<<COMMENT
    - Args:
    - Functions:

    - Usage:
    - Example:
COMMENT

# Arguements
REPO_NAME=$1;
REPO_PATH=${2:- "./"};
OUT_FILE="$REPO_PATH"README.md;


function create_owner_header(){
    #printf "\n**---- $REPO_NAME Owners ----**\t\t\n" >> $OUT_FILE;
    printf "\n**License(s)**: **:" >>  $OUT_FILE;
    printf "\n***Author(s)**: *omhm@omhm.org*" >>  $OUT_FILE;
    printf "\n**Maintainer(s)**: *MAINTAINERS*" >>  $OUT_FILE;
    printf "\n**Department/Team**: *DevOps*: *TOC*" >>  $OUT_FILE;
    printf "\n**Contents**:" >>  $OUT_FILE;

}


# Servers
function create_architecture(){
    printf "\n* **Server(s)** *SERVERS*" >>  $OUT_FILE;

    # Pubic Web
    printf "\n\t- **VPN**" >>  $OUT_FILE;
    printf "\n\t- **Web**" >>  $OUT_FILE;            # SERVERS_MAP = {}

    # Dev Ops
    printf "\n\t- **Build**" >>  $OUT_FILE;            # SERVERS_MAP = {}
    printf "\n\t- **Deployment**" >>  $OUT_FILE;            # SERVERS_MAP = {}

}

# Build Example Template
function create_example_usage(){
    printf "\n\n### **Usage**:" >> $OUT_FILE;
    printf "\n* *Building Project*:" >> $OUT_FILE;
    printf "\n* *Basic Usage*:" >> $OUT_FILE;
    printf "\n* *Examples*:" >> $OUT_FILE;
}

# Build Readme.md
function create_readme(){
    printf "# **$REPO_NAME**" >> $OUT_FILE;
}

create_readme;
create_owner_header;
create_example_usage;
create_architecture;