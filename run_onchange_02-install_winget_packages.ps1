# Install winget packages

# Self-elevate the script if required
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
  if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
    $CommandLine = "-NoExit -File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
    Start-Process -Wait -FilePath PowerShell.exe -Verb Runas -ArgumentList $CommandLine
    Exit
  }
}

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
  "SSHFS-Win.SSHFS-Win"
  "Microsoft.VisualStudioCode"
)

foreach ($package in $packages) {
  winget install $package
}
