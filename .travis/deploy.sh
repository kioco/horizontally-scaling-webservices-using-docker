#!/usr/bin/env bash

if [[ "$TRAVIS_BRANCH" != master ]]; then
    echo "Not building on 'master' so not deploying"
    exit 0
fi

if [[ "$TRAVIS_PYTHON_VERSION" != '3.5' ]]; then
    echo "Not building on python3.5 so not deploying"
    exit 0
fi

./upload-to-dockerhub.sh
