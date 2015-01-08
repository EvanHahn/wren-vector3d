#!/usr/bin/env bash
set -e
set -u

cat vector.wren test/please.wren test/test.wren > /tmp/wren_compiled.wren
"$WREN_PATH" /tmp/wren_compiled.wren
