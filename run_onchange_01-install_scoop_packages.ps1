# Install scoop buckets and packages

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
  "starship",
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
