#!/bin/bash
# Title: shrink.sh
# Author: Michael Martin
# Desc: Short hand to tar directories

directory=$1

tar -cvf $directory.tar $directory
