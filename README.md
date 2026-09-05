# Dotfiles

Fish, distrobox, starship and more — managed with [chezmoi](https://www.chezmoi.io/).

## Setup

1. Install chezmoi (`sudo dnf install chezmoi` or `brew install chezmoi`).
2. Run `chezmoi init user --apply`

```toml
# ~/.config/chezmoi/chezmoi.toml
sourceDir = "/path/to/dotfiles"
```

The repo has `.chezmoiroot` → `home`, so only `home/` is the chezmoi source.

3. Bootstrap packages + apply configs:

```bash
./scripts/bootstrap.sh
```

Or apply dots only:

```bash
chezmoi apply
```

## Day to day

```bash
chezmoi add ~/.config/some/file   # start managing a file
chezmoi edit ~/.config/fish/config.fish
chezmoi apply
chezmoi diff
```

## Packages

Lists under `packages/`; install scripts under `scripts/setup/`. Dump current state with `./scripts/dump.sh`.
