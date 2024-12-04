#!/bin/bash

DIR="$( dirname ${BASH_SOURCE[0]} )/.."
DATA_DIR=${DATA_DIR:-~/obs-mirror}

case "$1" in
    -h|--help)
        echo "Wrapper for bin/fetch-cpan"
        exit
    ;;
esac

cd $DIR

./bin/fetch-cpan --data "$DATA_DIR"

