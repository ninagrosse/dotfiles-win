# dotfiles-win

My personal dotfiles for Windows 11, managed with [chezmoi](https://github.com/twpayne/chezmoi)

## Requirements

* [Scoop](https://scoop.sh/)
* winget
* [Git for Windows](https://git-scm.com/downloads/win) (can install with `winget install --id Git.Git -e --source winget`)
* [Jetbrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads)

## Installation

In Windows Settings

* Go to System -> Developer -> PowerShell -> enable unsigned local scripts
* Go to System -> Developer -> Enable Developer Mode
* Go to System -> Multitaksing -> Disable Windows Snap Assist (if using komorebi)

Install `chezmoi`

```shell
scoop install chezmoi
```

Install dotfiles

```shell
chezmoi init --apply ninagrosse/dotfiles-win --ssh
```

This clones the repo and applies everything. Follow the on-screen prompts to setup git email and username. For cloning with https instead, omit `--ssh`.

To start the AutoHotkey script upon login, run (Win+R) `shell:startup` to open the startup folder. Create a shortcut to `capslock.ahk` in this folder.

## Scripts description

#### [`run_onchange_01-install_scoop_packages.ps1`](run_onchange_01-install_scoop_packages.ps1)

Installs various CLI tools and apps with Scoop and performs necessary setups if needed. Config files for cross-platform tools like `bat`, `lazygit` and `yazi` are imported from my [linux-dotfiles](https://github.com/ninagrosse/dotfiles) with [`.chezmoiexternal.toml`](.chezmoiexternal.toml).

#### [`run_onchange_02-install_winget_packages.ps1`](run_onchange_02-install_winget_packages.ps1)

Installs various desktop applications with winget.
