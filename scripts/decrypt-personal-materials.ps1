param(
  [Parameter(Mandatory = $true)]
  [string]$InputFile,

  [Parameter(Mandatory = $true)]
  [string]$OutputFile
)

$ErrorActionPreference = "Stop"

function Convert-SecureStringToPlainText {
  param([Security.SecureString]$SecureString)

  $ptr = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($SecureString)
  try {
    [Runtime.InteropServices.Marshal]::PtrToStringBSTR($ptr)
  }
  finally {
    [Runtime.InteropServices.Marshal]::ZeroFreeBSTR($ptr)
  }
}

$password = Read-Host "Archive password" -AsSecureString
$plainPassword = Convert-SecureStringToPlainText $password

$bytes = [IO.File]::ReadAllBytes((Resolve-Path -LiteralPath $InputFile))
$magic = [Text.Encoding]::ASCII.GetString($bytes, 0, 8)

if ($magic -ne "ZRXAES01") {
  throw "Unsupported encrypted archive format."
}

$salt = New-Object byte[] 16
$iv = New-Object byte[] 16
[Array]::Copy($bytes, 8, $salt, 0, 16)
[Array]::Copy($bytes, 24, $iv, 0, 16)

$cipherLength = $bytes.Length - 40
$cipherText = New-Object byte[] $cipherLength
[Array]::Copy($bytes, 40, $cipherText, 0, $cipherLength)

$kdf = [Security.Cryptography.Rfc2898DeriveBytes]::new(
  $plainPassword,
  $salt,
  200000,
  [Security.Cryptography.HashAlgorithmName]::SHA256
)

$aes = [Security.Cryptography.Aes]::Create()
$aes.KeySize = 256
$aes.Mode = [Security.Cryptography.CipherMode]::CBC
$aes.Padding = [Security.Cryptography.PaddingMode]::PKCS7
$aes.Key = $kdf.GetBytes(32)
$aes.IV = $iv

$decryptor = $aes.CreateDecryptor()
$plainBytes = $decryptor.TransformFinalBlock($cipherText, 0, $cipherText.Length)

[IO.File]::WriteAllBytes($OutputFile, $plainBytes)

$decryptor.Dispose()
$aes.Dispose()
$kdf.Dispose()

Write-Host "Decrypted archive written to $OutputFile"
