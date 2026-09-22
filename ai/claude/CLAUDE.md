# Working with me

## Stack & tooling

- Primary stack is TypeScript/Node.js — assume this unless a repo says otherwise
- Use `pnpm` for installs, scripts, and workspace commands
- Prefer strict typing; never use `any`
- Prefer a functional style

## Communication

- Keep responses balanced: brief explanations alongside the changes, no filler
- Ask clarifying questions before large or ambiguous changes

## Code changes

- Match the existing patterns and conventions in the file and repo
- Make minimal changes — no unrequested refactors or scope creep
- Avoid adding comments unless they explain something the code can't
- Prefer editing existing files over creating new ones
- Don't create docs/markdown files unless asked

## Testing & checks

- Write or update tests for the code you change
- Run tests before finishing
- Run lint and typecheck before finishing

## Commits

- Use Conventional Commits (`feat:`, `fix:`, etc.)
- Concise, imperative mood
- No AI attribution or co-author lines

## Raising a PR

- Use `gh` CLI to create and edit PRs — not MCP GitHub tools
- In the `trainline-private` GitHub org, prefix PR titles with `[NO-JIRA] ` followed by the title starting with a capital letter
- Keep PR descriptions concise; avoid verbose tables, long motivation sections, or restating what the diff already shows
- Before raising, ensure tests, linting, and typechecking all pass for the affected packages
- Where `pnpm changeset` is available, run it to bump any changed packages before pushing
