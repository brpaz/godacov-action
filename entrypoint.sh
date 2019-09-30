#!/bin/sh -l

CODACY_TOKEN=$0
RREPORT_PATH=$1
CCOMMIT_ID=$2

/go/bin/godacov -t $CODACY_TOKEN= -r $REPORT_PATH= -c $COMMIT_ID
