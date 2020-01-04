#!/bin/bash

if [ -z "$GITHUB_REPO" ]; then
    echo "Please provide a Github repo URL"
    exit 1
fi

CODE_DIR="code"
OUTPUT_DIR="/output"

echo "Cloning repo '$GITHUB_REPO'"
git clone $GITHUB_REPO $CODE_DIR
cd $CODE_DIR
echo "Done."

echo "Running 'npm install'"
npm install
cd ..
echo "Done."

echo "Watching for code changes"
while sleep 30; do ./build.sh $CODE_DIR $OUTPUT_DIR; done