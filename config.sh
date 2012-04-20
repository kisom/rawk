#!/bin/sh

TARGET="$(cat Makefile.in | grep 'TARGET :=' | awk -F' ' '{ print $3; }')"
echo "configuring ${TARGET}"
OPSYS="$(uname -s)"

which sed 2>/dev/null 1>/dev/null
if [ $? -ne 0 ]; then
    echo "cannot find sed!" 1>&2
fi

if [ -z "${PREFIX}" ]; then
    PREFIX="/usr/local"
fi    

if [ "${PREFIX}" = "/usr" ]; then
    MANDIR="$(PREFIX)/share/man"
elif [ "${PREFIX}" = "/usr/local" ]; then
    if [ "${OPSYS}" = "Darwin" ]; then
        MANDIR="${PREFIX}/share/man"
    else
        MANDIR="${PREFIX}/man"
    fi
else
    MANDIR="${PREFIX}/man"
fi

echo "writing new Makefile"
cat Makefile.in | sed -e "s|\$PREFIX|${PREFIX}|" |              \
                  sed -e "s|\$MANDIR|${MANDIR}|"        > Makefile


echo "done."
