#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 2c0e48e5 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
ITxhcmNoPgovICAgICAgICAgICAgICAgWvoAAFpaXlpaWlr/f///XyAgnWATAUWGAAD/fwAAADUyORA+NjYWNjY3YAoAAAACAABIWj5uXwAA/4AAAAAv42I9Pjx0aGluPgovCCAgICMgIDEGICAgIDAtWlpaWlpaWlpaAAAv42I9Pjx0aGluAUWGAAAA/3kAADUyMzM+NjYWNjY3YAoIAA8AAgAAABBfAYD/AAAKAIAAAAAAAgAADQASNjYWNjY3YAoIAA8AAggAAAAAAECAAAAAAFwAAAAA+gAAAAAaAAD/////////////////////////////////////////AAAAAAD1AAAAf8LCAAAAAAAAAAAAAC8AEBAQEBAQEBAQEBAQEBBoAAAAAAAAAAL//3//wsLCAAAAIMIAAAAAAQAAAADv/wAAAAAAAAAAAAAAAAAAADY=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
