#!/bin/bash
GIT_FOLDER=$1
OUTPUT_FOLDER=$2

if [ -z "$GIT_FOLDER" ]; then
    echo "git folder not provided"
    exit 1
fi

if [ -z "$OUTPUT_FOLDER" ]; then
    echo "build output folder not provided"
    exit 1
fi

cd $GIT_FOLDER
git reset --hard
git pull

# Build everything
npm run build

# Move the build contents to the output folder
mv build $OUTPUT_FOLDER
