#!/bin/sh -l

echo "Installing Gettext..."
apk add gettext

echo "Looking for .po files in $1..."

echo "Converting files..."
find $1 -type f -name \*.po -exec echo "→ {}" \; -exec msgfmt {} \;
