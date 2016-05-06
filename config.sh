#!/bin/sh

awk -F' ' '/TARGET :=/{ print "configuring " $3 }' Makefile
OPSYS="$(uname -s)"

which sed 2>/dev/null 1>/dev/null
if [ $? -ne 0 ]; then
    echo "cannot find sed!" 1>&2
fi

if [ -z "${PREFIX}" ]; then
    PREFIX="/usr/local"
fi    

if [ "${PREFIX}" = "/usr" ] ||
   [ "${PREFIX}" = "/usr/local" -a "${OPSYS}" = "Darwin" ]; then
    MANDIR="${PREFIX}/share/man"
else
    MANDIR="${PREFIX}/man"
fi

echo "writing .config"
cat >".config" <<EOF
PREFIX = $PREFIX
MANDIR = $MANDIR
EOF
echo "done."
