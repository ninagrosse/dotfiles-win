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
  "git-aliases",
  "less",
  "nano",
  "sudo"
)

foreach ($bucket in $buckets) {
  scoop bucket add $bucket
}

foreach ($package in $packages) {
  scoop install $package
}
