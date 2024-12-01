# dotfiles-win

My personal dotfiles for Windows 11

## Prerequisites

Clone in PowerShell
```shell
git clone git@github.com:ninagrosse/dotfiles-win.git $Env:USERPROFILE/.dotfiles-win`
```

## Setup [komorebi](https://github.com/LGUG2Z/komorebi) and [yasb](https://github.com/amnweb/yasb)

- Install [Jetbrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads)
- Install komorebi and yasb from their repos
- Disable Windows Snap Assist (Settings -> System -> Multitasking)
- Enable Developer Mode (Settings -> System -> For Developer -> Enable Developer Mode)
- Restart PowerShell
- Run `.\setup_komorebi_yasb.ps1` in PowerShell
- Start yasb from the start menu
- Set yasb to autostart via yasb tray icon
- Launch komorebi from yasb tray icon
