#!/bin/bash
# Installs the i-have-adhd plugin in Claude Code cloud sessions.
set -uo pipefail

[ "${CLAUDE_CODE_REMOTE:-}" = "true" ] || exit 0

claude plugin marketplace add ayghri/i-have-adhd >/dev/null 2>&1 || true
claude plugin install i-have-adhd@i-have-adhd >/dev/null 2>&1 || true
exit 0
