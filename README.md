# React Frontend Master Template

A reusable React frontend template built with **React, TypeScript, Vite, ESLint, Prettier, and Vitest**. It provides a consistent starting point for projects with automated code-quality checks, testing, and GitHub Actions workflows.

## Features

- React with TypeScript
- Vite development server and production builds
- ESLint for code-quality checks
- Prettier for consistent formatting
- Vitest for automated testing
- Test coverage reporting
- TypeScript validation
- GitHub Actions CI workflows
- Pull-request and commit-message checks

## Prerequisites

Install the following before using the template:

- [Node.js](https://nodejs.org/) — use a version supported by the project's CI configuration.
- npm, included with Node.js.
- [Git](https://git-scm.com/).
- A GitHub account for repository hosting and pull requests.

## Getting Started

### 1. Create a project repository

Open the master template repository on GitHub and select **Use this template → Create a new repository**.

Choose a repository name, owner, and visibility, then create the repository.

Each project should have its own repository and development history.

### 2. Clone your new repository

Replace the example URL with your new repository's URL:

```bash
git clone https://github.com/YOUR-OWNER/YOUR-REPOSITORY.git
cd YOUR-REPOSITORY
```

### 3. Install dependencies

```bash
npm ci
```

This installs the dependencies recorded in `package-lock.json`.

### 4. Start the development server

```bash
npm run dev
```

Open the local URL printed by Vite in your terminal.

## Available Commands

| Command                | Purpose                                                                                    |
| ---------------------- | ------------------------------------------------------------------------------------------ |
| `npm run dev`          | Starts the Vite development server.                                                        |
| `npm run build`        | Runs TypeScript build checks and creates a production build.                               |
| `npm run preview`      | Previews the production build locally.                                                     |
| `npm run lint`         | Checks source files with ESLint.                                                           |
| `npm run format`       | Formats files with Prettier.                                                               |
| `npm run format:check` | Checks formatting without modifying files.                                                 |
| `npm run typecheck`    | Runs TypeScript project checks.                                                            |
| `npm run test`         | Runs the test suite once.                                                                  |
| `npm run test:watch`   | Runs tests in watch mode.                                                                  |
| `npm run coverage`     | Runs tests and generates coverage results.                                                 |
| `npm run check:all`    | Runs formatting checks, linting, tests, coverage, type checking, and the production build. |

Run the complete local quality check before pushing changes:

```bash
npm run check:all
```

A successful local check does not replace the GitHub Actions checks required by the repository.

## Quality Gates

The quality gates help catch problems before code is merged.

- **Formatting:** Prettier checks that files follow the project's formatting rules.
- **Linting:** ESLint identifies configured code-quality issues.
- **Tests:** Vitest executes the automated test suite.
- **Coverage:** Vitest generates coverage results for the tested code.
- **Type checking:** TypeScript checks the project for type errors.
- **Build:** Vite creates the production bundle after TypeScript build checks.
- **Pull-request checks:** GitHub Actions validates changes submitted through pull requests.
- **Commit-message checks:** The configured commit-message validation enforces the repository's accepted commit conventions.

The exact checks enforced by GitHub depend on the workflows and repository rules configured for the project.

## Branch and Pull-Request Workflow

Use a separate branch for each feature, fix, or maintenance task.

A typical workflow is:

1. Update your local `main` branch.
2. Create a descriptive feature or fix branch.
3. Implement the change and add or update tests.
4. Run `npm run check:all`.
5. Commit your changes using the configured commit-message convention.
6. Push the branch to GitHub.
7. Open a pull request targeting `main`.
8. Resolve failed checks and review feedback.
9. Merge only when the applicable repository rules are satisfied.

Example branch names:

```text
feature/user-profile
fix/form-validation
chore/update-dependencies
```

## Continuous Integration

GitHub Actions workflows are stored in `.github/workflows/`.

Inspect that directory to understand which checks run on pushes, pull requests, dependency updates, and other configured events.

Before relying on a workflow, confirm its triggers, permissions, required checks, and any required repository secrets or environment settings.

## Project Configuration

- `src/` — application source code.
- `tests/` — automated tests, if organized separately from source tests.
- `scripts/` — project maintenance and automation scripts.
- `config/` — environment-specific configuration, where provided.
- `.github/workflows/` — GitHub Actions workflows.
- `.env.example` — example environment-variable names and values, where provided.
- `package.json` — npm scripts and dependency declarations.
- `package-lock.json` — locked dependency versions.

The exact contents may vary as the template evolves. Check the repository before assuming an optional directory or file exists.

## Environment Variables and Secrets

Use `.env.example` to document the environment variables required by the application, where applicable.

- Never commit real credentials, access tokens, private keys, or production secrets.
- Keep actual environment files out of Git when they contain local secrets.
- Store CI/CD credentials in GitHub Actions secrets or the appropriate environment-level secret store.
- Provide safe example values in documentation.

## Contributing

Before opening a pull request:

1. Keep changes focused.
2. Add or update tests where appropriate.
3. Run `npm run check:all`.
4. Follow the configured commit-message conventions.
5. Explain the change and how it was tested in the pull request.

See `CONTRIBUTING.md` for additional contribution instructions.

## License

Add the project's chosen license before distributing the template publicly.
