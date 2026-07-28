#!/bin/bash

# Points each CLI's global config at the shared AGENTS.md so Claude Code and
# Codex read the same instructions instead of drifting apart.
agents_config() {
  mkdir -p ~/.claude ~/.codex
  ln -sf ~/.agents/AGENTS.md ~/.claude/CLAUDE.md
  ln -sf ~/.agents/AGENTS.md ~/.codex/AGENTS.md
}

# Check if script is being run directly
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  agents_config "$@"
fi
