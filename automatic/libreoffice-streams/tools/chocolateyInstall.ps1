﻿$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'libreoffice'
  fileType               = 'msi'
  url                    = 'https://download.documentfoundation.org/libreoffice/stable/5.4.4/win/x86/LibreOffice_5.4.4_Win_x86.msi'
  url64bit               = 'https://download.documentfoundation.org/libreoffice/stable/5.4.4/win/x86_64/LibreOffice_5.4.4_Win_x64.msi'
  checksum               = '7c56031fb5577edafd35153c0d284ecf2c0ec3773a72f3e2209271c44ba156a8'
  checksum64             = '0738dd24b5ba9a9dab079df34db7543d9d8b9a7a2989c0a4934debbaea8a5c8f'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/passive /norestart'
  validExitCodes         = @(0,3010)
  softwareName           = 'LibreOffice*'
}
Install-ChocolateyPackage @packageArgs
