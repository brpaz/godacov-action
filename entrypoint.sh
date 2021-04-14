#!/bin/sh -l

CODACY_TOKEN=$1
REPORT_PATH=$2
COMMIT_ID=$3

/go/bin/godacov -r $REPORT_PATH -t $CODACY_TOKEN -c $COMMIT_ID

test
