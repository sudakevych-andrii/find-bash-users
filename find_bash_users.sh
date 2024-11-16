#!/bin/bash

FILE="/etc/passwd"

if [[ ! -f "$FILE"  ]]; then
  echo "File $FILE does not exist."
  exit 1
fi

echo "Users with /bin/bash CLI:"
awk -F: '$NF == "/bin/bash" {print $1}' "$FILE"
