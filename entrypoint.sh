#!/bin/bash


case $1 in 
    bash|sh)
        exec $@
        ;;
    *)
        exec json-server $@
        ;;
esac


