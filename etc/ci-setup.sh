#!/usr/bin/env bash

[ "$CI" != "true" ] && echo "Not running on CI!" && exit 1

bundle install
bundle exec hatchet ci:setup

sudo apt-get install python build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev -y