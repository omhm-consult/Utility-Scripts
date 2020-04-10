#!/bin/bash
# Title: timestamp-strip.sh
# Author: Michael Martin
# Desc: Strip timestamps from filenames

rename -n 's/ /$1.txt/' *_*.txt