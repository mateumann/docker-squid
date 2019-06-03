#!/bin/sh
exec 2>&1
exec squid -f /etc/squid/squid.conf -sN
