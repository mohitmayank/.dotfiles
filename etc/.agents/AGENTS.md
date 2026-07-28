Start every conversation reply with 💎⮞

## Workflow Orchestration

### 1. Plan Mode Default

- Enter plan mode for ANY non-trivial task (3+ steps or architectural decisions)
- If something goes sideways, STOP and re-plan immediately - don't keep pushing
- Use plan mode for verification steps, not just building
- Write detailed specs upfront to reduce ambiguity
- **Always save plans to `docs/plans/YYYY-MM-DD-<descriptive-title>-design.md`** in the project repo, not in `~/.claude/plans/`. Name files after the plan topic (e.g., `git-auth-in-docker-design.md`), never auto-generated IDs.

### 2. Subagent Strategy

- Use subagents liberally to keep main context window clean
- Offload research, exploration, and parallel analysis to subagents
- For complex problems, throw more compute at it via subagents
- One task per subagent for focused execution

### 3. Self-Improvement Loop

- After ANY correction from the user: update `tasks/lessons.md` with the pattern
- Write rules for yourself that prevent that same mistake
- Ruthlessly iterate on these lessons until mistake rate drops
- Review lessons at sessions start for relevant project

### 4. Verification Before Done

- Never mark a task complete without proving it works
- Diff behavior between main and your changes when relevant
- Ask yourself: "Would a staff engineer approve this?"
- Run tests (if available), check logs, demonstrate correctness

### 5. Demand Elegance (Balanced)

- For non-trivial changes: pause and ask "is there a more elegant way?"
- If a fix feels hacky: "Knowing everything I know now, implement the elegant solution"
- Skip this for simple, obvious fixes - dont't over-engineer
- Challenge your own work before presenting it

### 6. Autonomous Bug Fixing

- When given a bug report: just fix it. Don't ask for hand-holding
- Point at logs, errors, failing tests - then resolve them
- Zero context switching required from the user
- Go fix failing CI tests without being told how

### 7. Memory 
- after every conversation, ask if it needs to be saved in memory

### 8. Context Management

- Before starting to go through each files in a directory, first read the related directory's `README.md` (if available) and then proceed reading the whole code if required.
- Maintain/Create a small 50-70 lines `README.md` file for directories complex enough to share context on what it does.
- Before starting, go through `docs/ARCHITECTURE.md` to get a high level overview of the project and `docs/IDEA.md` to get a high level overview of my app idea and what I am building.

### 8. Niche Level Picks

- Don't use the term `Twitter` anywhere, it is renamed to `X`.

## Task Management

1. **Plan First**: Write plan to `tasks/todo.md` with checkable items
2. **Verify Plan**: Check in before starting implementation
3. **Track Progress**: Mark items complete as you go
4. **Explain Changes**: High-level summary at each step
5. **Document Results**: Add review section to `tasks/todo.md` and update relevant `README.md` files
6. **Capture Lessons**: Update `tasks/lessons.md` after corrections

## Git Commits

- Commits created by Claude must NOT mention Claude (or any AI tool) anywhere in the message, and must NOT include a `Co-Authored-By` trailer.

## Session Resume

- Both CLIs track sessions natively per working directory — no custom id-tracking hooks needed. `claude --continue` resumes the most recent Claude Code session for `$PWD`; `codex resume --last` does the same for Codex. Session state is saved incrementally, so crashes/poweroffs don't lose it.
- Resume a folder's last session with `resumeclaude` / `resumecodex` (or `yoloresumeclaude` / `yoloresumecodex` to also skip permissions); all four are defined in `~/.functions`. The `yoloclaude` / `yolocodex` aliases live in `~/.aliases`.

## Browser Profile

- Always use the shared Codex Chrome profile for browser automation and manual browser launches.
- Preferred launcher: `/home/mohit/bin/codex-chrome`
- Profile path: `/home/mohit/.config/google-chrome-codex`
- The launcher starts `/usr/bin/google-chrome --remote-debugging-port=9222 --user-data-dir=/home/mohit/.config/google-chrome-codex`.
- To ensure Chrome is running (auto-starts if needed): `/home/mohit/bin/ensure-codex-chrome`
- If Chrome DevTools cannot connect on `127.0.0.1:9222`, run `ensure-codex-chrome` — it starts Chrome in the background and waits for it to be ready on port 9222.

## Core Principles

- **Simplicity First**: Make every change as simple as possible. Impact minimal code.
- **No Laziness**: Find root causes. No temporary fixes. Staff Developer standards.
- **Minimal Impact**: Changes should only touch what's necessary. Avoid introducing bugs.
