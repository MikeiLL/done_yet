#!/bin/bash

find . -name "*.ly" -type f -print0 | xargs -0 lilypond
say "Engraving rendered."

