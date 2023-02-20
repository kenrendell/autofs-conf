#!/bin/sh

[ "$(whoami)" = 'root' ] || { printf 'Root permission is needed!\n'; exit 1; }

cd "${0%/*}" || exit 1
cp -rn ./autofs/* /etc/autofs/
