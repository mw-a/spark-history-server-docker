#!/bin/sh

set -ex

script_path=`realpath $0`
dir_path=`dirname ${script_path}`
no_cache="--no-cache"

repo="sasnouskikh/history-server"
tag="3.0.1_2.12-hadoop_3.2.0_cloud"

( cd ${dir_path}; docker build . ${no_cache} -t "${repo}:${tag}" )
docker push "${repo}:${tag}"
echo "Done! Enjoy..."
