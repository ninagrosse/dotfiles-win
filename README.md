# dotfiles-win

My personal dotfiles for Windows 11

## Content

- Automatic installation of various Scoop packages. See the list of packages in [setup_scoop.ps1](setup_scoop.ps1).
- Automatic installation of various winget packages. See the list of packages in [setup_winget.ps1](setup_winget.ps1).
- Automatic setup of [komorebi](https://github.com/LGUG2Z/komorebi) and [yasb](https://github.com/amnweb/yasb)
- The `dotfiles-unix` submodule points to my [unix-dotfiles](https://github.com/ninagrosse/dotfiles), so the configs for cross-platform tools like `bat`, `lazygit` and `yazi` don't need to be maintained twice
- Templates for `.gitconfig` and `Microsoft.PowerShell_profile.ps1`

## Prerequisites

Clone in PowerShell (the path is important)
```shell
git clone git@github.com:ninagrosse/dotfiles-win.git $Env:USERPROFILE/.dotfiles-win --recurse-submodules
cd $Env:USERPROFILE/.dotfiles-win
```

Go to Windows Settings -> System -> Developer -> PowerShell -> enable unsigned local scripts

## Install Scoop packages

- Install [Scoop](https://scoop.sh/)
- Run `.\setup_scoop.ps1` in PowerShell

## Install winget packages

- Start PowerShell as admin or disable UAC
- Run `.\setup_winget.ps1` in PowerShell
- Reenable UAC (if disabled)

## Setup komorebi and yasb

- Install [Jetbrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads)
- komorebi and yasb are installed via `.\setup_winget.ps1`
- Disable Windows Snap Assist (Windows Settings -> System -> Multitasking)
- Enable Developer Mode (Windows Settings -> System -> Developer -> Enable Developer Mode)
- Restart PowerShell
- Run `.\setup_komorebi_yasb.ps1` in PowerShell
- Start yasb from the start menu
- Set yasb to autostart via yasb tray icon
- Launch komorebi from yasb tray icon

## `.gitconfig` and `Microsoft.PowerShell_profile.ps1`

- Copy `.gitconfig` to `C:\Users\<USER>\.gitconfig` and edit the `[user]` entries
- Run `echo $profile` in PowerShell to get the location of `Microsoft.PowerShell_profile.ps1` (usually `C:\Users\<USER>\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`) and copy/replace the template there
