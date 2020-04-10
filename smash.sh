#!/bin/bash
# Title: smash.sh
# Author: Michael Martin
# Desc: Short hand to compress directories

directory=$1

tar -cvJf $directory.tar.bz2 $directory
