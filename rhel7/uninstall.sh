#!/bin/bash

prefix=${HOST:-/host}

rm -rf ${prefix}/etc/iscsi/iscsid.conf
rm -rf ${prefix}/etc/iscsi/initiatorname.iscsi
rm -rf ${prefix}/var/lock/iscsi/lock
rmdir ${prefix}/etc/iscsi
rmdir ${prefix}/var/lock/iscsi
