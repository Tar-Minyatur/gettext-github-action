#!/bin/sh -l

echo "Installing Gettext..."
apk add gettext

echo "Checking .po files in $1..."
find $1 -type f -name \*.po -print0 | xargs -0 msgfmt --check-format
