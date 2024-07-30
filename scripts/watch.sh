#!/usr/bin/env sh

clear
find . -name '*.typst' | entr rhiz build
