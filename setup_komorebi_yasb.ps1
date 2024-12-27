Write-Host "Setting up komorebi and yasb"
Write-Host ""

# Some helper functions
function create_dir($dir) {
  if (!(Test-Path -Path $dir)) {
    Write-Host "Creating directory" $dir
    mkdir $dir > $null
  }
}

function symlink($target, $source) {
  if (Test-Path -Path $target) {
    $backup = $target + ".pre-dotfiles"
    Move-Item -Path $target -Destination $backup
  }
  cmd /c mklink /D $target $source
}

# Create directories, if they don't exist
create_dir $Env:USERPROFILE\.config
create_dir $Env:USERPROFILE\.config\komorebi
create_dir $Env:USERPROFILE\.config\yasb

# Symlink config files
symlink $Env:USERPROFILE\.config\komorebi $Env:USERPROFILE\.dotfiles-win\.config\komorebi
symlink $Env:USERPROFILE\.config\yasb $Env:USERPROFILE\.dotfiles-win\.config\yasb
cmd /c mklink $Env:USERPROFILE\.config\whkdrc $Env:USERPROFILE\.dotfiles-win\.config\whkdrc

Write-Host ""
Write-Host "Setting up komorebi autostart"
komorebic enable-autostart --config $Env:USERPROFILE\.config\komorebi\komorebi.json --whkd

Write-Host ""
Write-Host "All done!"
