﻿$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'xnviewmp.portable'
  url            = 'https://download.xnview.com/XnViewMP-win.zip'
  url64bit       = 'https://download.xnview.com/XnViewMP-win-x64.zip'
  checksum       = '5392ef83760aed34309a55cae447b6e59ba83b6b4dcfa1cebc99e3de1437d101'
  checksumType   = 'sha256'
  checksum64     = '3ac03f0b6a75e0e54c21a6e078ecd5caea3b14df5837ff9238c0386a990f45fd'
  checksumType64 = 'sha256'
  UnzipLocation  = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  validExitCodes = @(0)
}
Install-ChocolateyZipPackage @packageArgs
