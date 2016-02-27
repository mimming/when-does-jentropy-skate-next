#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" &&

pushd $DIR &&

gsutil -m rsync -rx '\..*|.*/\.[^/]*$|.*/\..*/.*$|_.*' . gs://mimming.com/rollerderby &&

popd $DIR
