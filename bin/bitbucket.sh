#!/usr/bin/env bash

source atlassian-product.sh

function product_definition() {
    version=$(_default $1 5.16.0)
    echo "--product bitbucket --version ${version} --http-port 8080 --server 127.0.01"
}

function start() {
    start_product $(product_definition $@)
}

function debug() {
    debug_product $(product_definition $@)
}

eval $@
