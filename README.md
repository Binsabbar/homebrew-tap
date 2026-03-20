# homebrew-tap

Homebrew tap for [Binsabbar](https://github.com/Binsabbar)'s binaries.

## Usage

```bash
brew tap binsabbar/tap
```

## Available Formulae

### tasklog

Interactive CLI tool for tracking time on Jira tasks with Jira Cloud and Tempo integration.

```bash
brew install binsabbar/tap/tasklog
```

See [tasklog repository](https://github.com/Binsabbar/tasklog) for configuration and usage details.

### vault-sync

Production-ready tool for synchronizing secrets across multiple HashiCorp Vault clusters.

```bash
brew install binsabbar/tap/vault-sync
```

See [vault-sync repository](https://github.com/Binsabbar/vault-sync) for configuration and usage details.

## Adding a New Formula

Place a new `.rb` formula file in the `Formula/` directory. See the [Homebrew documentation](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap) for details.
