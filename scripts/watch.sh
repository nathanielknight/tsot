#!/usr/bin/env sh

find . -name '*.typst' | entr rhiz build
