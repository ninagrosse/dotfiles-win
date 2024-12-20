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
  "less",
  "nano",
  "tealdeer",
  "ugrep",
  "zoxide"
)

foreach ($bucket in $buckets) {
  scoop bucket add $bucket
}

foreach ($package in $packages) {
  scoop install $package
}
