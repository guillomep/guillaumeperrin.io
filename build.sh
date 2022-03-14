#!/usr/bin/env bash

# Create build dir
mkdir -p ./dist

# Copy assets
cp -r assets ./dist/assets
cp -r css ./dist/css
cp -r js ./dist/js

# Copy cloudflare rules
cp _headers ./dist/

# Install static-i18n
npm install -g static-i18n

# Run i18n
static-i18n -l en -i en -i fr -o ./dist .
