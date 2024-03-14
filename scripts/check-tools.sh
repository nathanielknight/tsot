#!/usr/bin/env sh

set -eu

tools=$(cat <<EOF
typst
git
EOF
)
all_installed=true

for program in $tools; do
  if command -v "$program" > /dev/null 2>&1; then
    echo "$program : installed"
  else
    echo "$program : MISSING"
    all_installed=false
  fi
done

if $all_installed; then
  exit 0
else
  echo "Some tools were missing"
  exit 1
fi


