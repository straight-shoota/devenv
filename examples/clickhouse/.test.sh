#!/bin/sh
set -ex
devenv up&
devenv shell timeout 20 bash -c 'until echo > /dev/tcp/localhost/9000; do sleep 0.5; done'
clickhouse-client --query "SELECT 1"
