#!/bin/sh -l

echo "Installing Gettext..."
apk add gettext

echo "Converting files..."
find $1 -type f -name \*.po -exec msgfmt {} \;
