# Claude Code Home

A collection of custom Claude Code agents and workflow commands for enhanced development workflows.

## Workflow

The `create` and `next-agent` commands work together with the next-* agents:

- **Create phase plan**
  - Run `/create [plan-file]` to generate a comprehensive plan document
  - Plan includes architecture, workflow, and implementation phases

- **Execute each phase**
  - Run `/next-agent [plan-file] [phase]` to implement a specific phase
  - Orchestrates the following agent sequence:
    - `next-0-plan` → Analyze requirements and provide implementation guidance
    - `next-1-code` → Write the code following the plan
    - `next-2-check` → Run tests and report failures
    - `next-3-0-fixbug-plan` → Create fix strategy (if tests fail)
    - `next-3-1-fixbug-code` → Apply fixes (if needed)
    - `next-4-update-plan` → Mark completed tasks in plan

## Agents
https://docs.claude.com/en/docs/claude-code/sub-agents

- **next-0-plan.md** - Analyzes plan documents and current implementation to identify tasks
- **next-1-code.md** - Implements features following the coding plan
- **next-2-check.md** - Runs comprehensive test suite and generates failure reports
- **next-3-0-fixbug-plan.md** - Analyzes bugs and creates fix strategies
- **next-3-1-fixbug-code.md** - Implements bug fixes based on the plan
- **next-4-update-plan.md** - Updates plan documentation with completed tasks

## Custom Commands
https://docs.claude.com/en/docs/claude-code/slash-commands#custom-slash-commands

- **create.md** - Creates comprehensive project plan with architecture, workflow, and phases
- **next-agent.md** - Executes complete development cycle for a plan phase
- **create_context.md** - Summarizes work done with file paths for context
- **resume_context.md** - Explores codebase to rebuild context from summary
- **squash.md** - Squashes all branch commits into one

## Usage

Run `scripts/cp.sh` to copy agents and commands from ~/.claude/ to this repository based on files listed in `list_file.txt`.
