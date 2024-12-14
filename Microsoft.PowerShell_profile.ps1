# Init Starship prompt
Invoke-Expression (&starship init powershell)

# Import git-aliases module (installed via Scoop)
Import-Module git-aliases -DisableNameChecking

# eza aliases
Function ll($path) { eza -lg --icons=auto --group-directories-first $path }
Function la($path) { eza -lag --icons=auto --group-directories-first $path }
Function l($path) { eza -lg $path }
Set-Alias -Name ls -Value eza -Option AllScope

# Replace cat with bat
Set-Alias -Name cat -Value bat -Option AllScope

# Replace grep with ugrep
Set-Alias -Name grep -Value ug
Function egrep($path) { ug -E $path }
Function fgrep($path) { ug -F $path }
Function xzgrep($path) { ug -z $path }
Function xzegrep($path) { ug -zE $path }
Function xzfgrep($path) { ug -zF $path }

# Init zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })
