# Init Starship prompt
Invoke-Expression (&starship init powershell)

# Import git-aliases module (installed via Scoop)
Import-Module git-aliases -DisableNameChecking

# eza aliases
Function ll { eza -lg --icons=auto --group-directories-first }
Function la { eza -lag --icons=auto --group-directories-first }
Function l { eza -lg }
Set-Alias -Name ls -Value eza -Option AllScope

# replace cat with bat
Set-Alias -Name cat -Value bat -Option AllScope
