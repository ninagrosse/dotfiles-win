# Init Starship prompt
Invoke-Expression (&starship init powershell)

# Import git-aliases module (installed via Scoop)
Import-Module git-aliases -DisableNameChecking

# eza aliases
Function ll { eza -lg --icons=auto --group-directories-first }
Function la { eza -lag --icons=auto --group-directories-first }
Function l { eza -lg }
Set-Alias -Name ls -Value eza -Option AllScope

# Replace cat with bat
Set-Alias -Name cat -Value bat -Option AllScope

# Replace grep with ugrep
Set-Alias -Name grep -Value ug
Function egrep { ug -E }
Function fgrep { ug -F }
Function xzgrep { ug -z }
Function xzegrep { ug -zE }
Function xzfgrep { ug -zF }

# Init zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })
