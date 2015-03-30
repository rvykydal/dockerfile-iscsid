#!/bin/bash

prefix=${HOST:-/host}

rm -rf ${prefix}/etc/iscsi
rm -rf ${prefix}/var/lock/iscsi
rm -rf ${prefix}/var/lib/iscsi
