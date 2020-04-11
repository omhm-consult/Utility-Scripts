#!/bin/bash
app=$1
$app -V 2>&1 | grep --color -o -e '--prefix=[^[:space:]]\+'
