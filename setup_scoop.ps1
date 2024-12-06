# Install scoop buckets and packages

$buckets = @("extras")
foreach ($bucket in $buckets) {
  scoop bucket add $bucket
}

$packages = @("bat", "curl", "curlie", "delta", "duf", "eza", 
  "fastfetch", "git-aliases", "less", "nano", "sudo")
foreach ($package in $packages) {
  scoop install $package
}
