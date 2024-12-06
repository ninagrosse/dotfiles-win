# Install winget packages

$packages = @(
  "7zip.7zip",
  "Piriform.CCleaner",
  "CPUID.CPU-Z",
  "Git.Git",
  "Mozilla.Thunderbird.de",
  "Notepad++.Notepad++",
  "VideoLAN.VLC",
  "LGUG2Z.komorebi",
  "Cryptomator.Cryptomator",
  "LGUG2Z.whkd"
  "PuTTY.PuTTY",
  "Starship.Starship",
  "AmN.yasb",
  "Oracle.VirtualBox",
  "Guru3D.Afterburner",
  "Brave.Brave",
  "Guru3D.RTSS",
  "Microsoft.PowerToys",
  "WinFsp.WinFsp",
  "Sonos.Controller",
  "Foxit.FoxitReader",
  "Sinew.Enpass",
  "dbeaver.dbeaver",
  "Discord.Discord",
  "WinDirStat.WinDirStat",
  "Balena.Etcher"
  "Obsidian.Obsidian",
  "WinSCP.WinSCP",
  "Microsoft.VisualStudioCode"
)

foreach ($package in $packages) {
  winget install $package
}
