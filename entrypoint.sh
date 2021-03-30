#!/bin/sh

set -e

if [ -z "$INPUT_CONNECTION_STRING" ] then;
    echo ""
    exit 1
fi

if [ -z "$INPUT_SOURCE" ] then;
    echo ""
    exit 1
fi

if [ -z "$INPUT_DESTINATION" ] then;
    echo ""
    exit 1
fi

EXTRA_ARGS=${INPUT_EXTRA_ARGS:""}

az storage file upload-batch --connection-string $INPUT_CONNECTION_STRING --source $INPUT_SOURCE --destination $INPUT_DESTINATION $EXTRA_ARGS
