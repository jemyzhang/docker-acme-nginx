#!/bin/bash
export PATH=/root/.acme.sh:$PATH

PARAMS=${PARAMS:-"--help"}

if [ x"$UPDATE"x = x"true"x ]; then
  acme.sh --upgrade  
fi

eval "acme.sh $PARAMS"
