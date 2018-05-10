#!/usr/bin/env bash

if [[ ! "$(inkscape --version)" =~ ^Inkscape ]]; then
  echo "Inkscape is not installed"
  exit 1
fi

PREFIX=""
if [[ -n $1 ]]; then
  PREFIX=$1
fi

inkscape --export-png=../"${PREFIX}_"anon.png anon.svg
inkscape --export-png=../"${PREFIX}_"client.png client.svg
inkscape --export-png=../"${PREFIX}_"app.png app.svg
inkscape --export-png=../"${PREFIX}_"emp.png emp.svg
