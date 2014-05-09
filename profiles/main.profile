#!/bin/bash

pushd `dirname $0` > /dev/null
loc=`pwd -P`
popd > /dev/null

# Load other profile modules from here
files=(emacs ssh kerl)
for f in $files
do
    source $loc/$f.profile
done
