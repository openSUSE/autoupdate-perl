#!/bin/bash

DIR="$( dirname ${BASH_SOURCE[0]} )/.."
DATA_DIR=${DATA_DIR:-~/obs-mirror}

case "$1" in
    -h|--help)
        echo "Wrapper for bin/status-perl && bin/update-perl"
        exit
    ;;
esac

cd $DIR

./bin/status-perl --data "$DATA_DIR" --project devel:languages:perl:autoupdate --update

./bin/update-perl \
    --data "$DATA_DIR" \
    --project devel:languages:perl:autoupdate \
    --max 20
