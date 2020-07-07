#!/bin/sh -l

echo "Installing Gettext..."
apk add gettext

echo "Checking .po files in $1..."
ERRORS=0
for filename in $(find $1 -type f -name \*.po)
do
  echo -n "→ $filename..."
  msgfmt "$filename"
  returnValue=$?
  if [ $returnValue -ne 0 ]; then
    ERRORS=$ERRORS+1
    echo "contains errors!"
  else
    echo "ok"
  fi
done
echo ""
if [ $ERRORS -gt 1 ]; then  
  echo "FOUND $ERRORS ERROR(S) IN THE TRANSLATION FILES. SEE ABOVE FOR DETAILS."
  exit 1
else
  echo "No errors found."
  exit 0
fi
