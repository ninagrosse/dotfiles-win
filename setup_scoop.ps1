# Install scoop buckets and packages

# Some helper functions
function create_dir($dir) {
  if (!(Test-Path -Path $dir)) {
    Write-Host "Creating directory" $dir
    mkdir $dir > $null
  }
}
function symlink($target, $source) {
  if (Test-Path -Path $target) {
    if ((Get-Item $target).LinkType -eq "SymbolicLink") {
      Remove-Item -Path $target -Recurse
    }
    else {
      $backup = $target + ".pre-dotfiles"
      Move-Item -Path $target -Destination $backup
    }
  }
  cmd /c mklink /D $target $source
}

$buckets = @(
  "extras"
)

$packages = @(
  "bat",
  "curl",
  "curlie",
  "delta",
  "duf",
  "eza", 
  "fastfetch",
  "fd",
  "fzf",
  "git-aliases",
  "jq",
  "lazygit",
  "less",
  "make",
  "mingw",
  "nano",
  "neovide",
  "neovim",
  "ripgrep",
  "tealdeer",
  "ugrep",
  "win32yank",
  "yazi",
  "zoxide"
)

foreach ($bucket in $buckets) {
  scoop bucket add $bucket
}

foreach ($package in $packages) {
  scoop install $package
}

# Symlink Yazi config
create_dir $Env:APPDATA\yazi
symlink $Env:APPDATA\yazi\config $Env:USERPROFILE\.dotfiles-win\.config\yazi 

# Symlink Neovide config
symlink $Env:APPDATA\neovide $Env:USERPROFILE\.dotfiles-win\.config\neovide 

