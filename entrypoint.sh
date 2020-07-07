#!/bin/sh -l

echo "Installing Gettext..."
apk add gettext

echo "Checking .po files in $1..."
msgfmt -c -d $1
