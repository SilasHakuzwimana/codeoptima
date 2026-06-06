# Contributing to CodeOptima

We love your input! We want to make contributing as easy and transparent as possible.

## Development Process

1. Fork the repo and create your branch from `main`
2. Install dependencies: `pnpm install`
3. Build WASM: `pnpm --filter core-wasm build`
4. Run tests: `pnpm test`
5. Ensure linting passes: `pnpm lint`
6. Submit PR

## Pull Request Process

1. Update the README.md with details of changes if needed
2. Update the docs with any new configuration
3. PR must pass all CI checks
4. Get approval from at least one maintainer

## Commit Convention

We use [Conventional Commits](https://www.conventionalcommits.org/):

- `feat:` New feature
- `fix:` Bug fix
- `docs:` Documentation
- `style:` Code style
- `refactor:` Code refactor
- `test:` Tests
- `chore:` Build process

Example: `feat: add memory leak detection for Python`

## Code Style

- TypeScript: ESLint + Prettier
- Rust: rustfmt
- Python: black (for examples)
- Java: Google Java Format

## Testing

```bash
# Run all tests
pnpm test

# Test specific package
pnpm --filter extension test

# Watch mode
pnpm test -- --watch
