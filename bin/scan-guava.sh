#! /usr/bin/env bash

if [[ -z ${1} ]];
then
    echo missing packages pattern to scan
    exit 1
fi

scanned=${1}
shift

mvn -fae -e compile com.atlassian.maven.plugins:banned-packages-maven-plugin:1.0.1:scan \
    -Dscanned=${scanned} \
    -Dbanned="com.google.common.(base|collect).*" \
    $@
