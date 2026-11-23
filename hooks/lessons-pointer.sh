#!/usr/bin/env bash
# Prints one line so the session knows the lessons exist. Nothing else is loaded.
dir="${CLAUDE_PLUGIN_ROOT:-$(cd "$(dirname "$0")/.." && pwd)}/lessons"
echo "Lessons from past work with this user live in ${dir} (INDEX.md has one line per lesson). They are not loaded: when your work touches a lesson's topic, or the user corrects your approach, read the relevant lesson and let it shape the work."
