#!/usr/bin/env bash

RRCRRC=../bin/rrcrrc

rm -rf cases/actual
mkdir cases/actual

for FILENAME in $(ls cases/original)
do
    echo "running test for $FILENAME ..."
    ORIGINAL_FILE_PATH=cases/original/$FILENAME
    EXPECTED_FILE_PATH=cases/expected/$FILENAME
    ACTUAL_FILE_PATH=cases/actual/$FILENAME

    cp $ORIGINAL_FILE_PATH $ACTUAL_FILE_PATH
    $RRCRRC $ACTUAL_FILE_PATH

    if ! cmp $EXPECTED_FILE_PATH $ACTUAL_FILE_PATH
    then
        diff $EXPECTED_FILE_PATH $ACTUAL_FILE_PATH
        exit 1
    fi
done
