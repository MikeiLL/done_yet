#!/bin/bash

find . -name "*.ly~" -type f -print0 | xargs -0 rm
find . -name "*.midi" -type f -print0 | xargs -0 rm
find . -name "*.pdf" -type f -print0 | xargs -0 rm
