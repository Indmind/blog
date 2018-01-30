#!/usr/bin/env bash

rm ./docs -rf
hugo -D
html-minifier --input-dir ./docs --output-dir ./docs --minify-css --minify-js --collapse-whitespace --remove-comments --remove-optional-tags --remove-script-type-attributes --remove-tag-whitespace --use-short-doctype --file-ext html
