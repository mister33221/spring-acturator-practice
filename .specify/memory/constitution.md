<!--
Sync Impact Report:
- Version change: N/A -> 1.0.0
- Modified principles: N/A (initial adoption)
- Added sections: Core Principles, Git Rules, Task Development Rules, Governance
- Removed sections: N/A
- Templates requiring updates: none
- Follow-up TODOs: RATIFICATION_DATE
-->
# Spring Actuator Practice Constitution

## Core Principles

### I. Backend Development Rules (Non-Negotiable)
Build a minimal Spring Boot backend focused on learning Actuator; keep scope
small and observable. Required rules:
- Expose Actuator endpoints explicitly; do not rely on defaults.
- Use profiles and externalized config; no hard-coded credentials.
- Add meaningful health/info details to demonstrate Actuator usage.
- Keep controllers thin; put logic in services with small, testable units.
- Log structured, actionable events for key flows and errors.

### II. Git Rules (Non-Negotiable)
Git history must be readable and safe to review. Required rules:
- One feature or fix per branch; branch name uses `###-short-topic`.
- Commit messages follow Conventional Commits (e.g., `feat: add health info`).
- Keep commits small and focused; no mixed refactors and features.
- Rebase or merge only when CI/build is green; no broken main branch.
- PR/merge requires a short summary and test notes.

### III. Task Development Rules (Non-Negotiable)
Work is tracked as clear, testable tasks. Required rules:
- Break work into user-visible outcomes, each independently verifiable.
- Define done for every task: behavior, tests (if any), and docs updates.
- Keep tasks small enough to finish in 1-2 hours.
- Mark dependencies explicitly before starting implementation.
- Update task status as you work; no silent progress.

## Git Rules

- Branch names: `###-short-topic` (e.g., `001-actuator-health`).
- Commit format: `type(scope): message` where type is `feat`, `fix`, `docs`,
  `refactor`, `test`, `chore`.
- Squash only when it improves clarity; avoid losing meaningful steps.
- Protect main: no direct pushes, merge via PR with review.
- Tag learning milestones (e.g., `v0.1.0` for Actuator basics complete).

## Task Development Rules

- Each task includes: goal, files to change, and success check.
- Record decisions and assumptions in the task description.
- Prefer failing tests before implementation when tests are requested.
- Keep tasks ordered by dependency; do not start blocked tasks.
- Close a task only after running the relevant checks.

## Governance

This constitution is the top-level rule set for the project. Changes require:
- A written amendment describing the change and rationale.
- A version bump following semantic versioning (MAJOR/MINOR/PATCH).
- Review of plan/spec/task templates for alignment.
- Confirmation that active tasks comply with the updated rules.

**Version**: 1.0.0 | **Ratified**: TODO(RATIFICATION_DATE): unknown adoption date | **Last Amended**: 2026-01-08
