#!/bin/bash

pushd .
cd $1
mv _static static
mv _images images

find . -name '*.html' | xargs sed -i 's/_static/static/g'
find . -name '*.html' | xargs sed -i 's/_images/images/g'

popd

