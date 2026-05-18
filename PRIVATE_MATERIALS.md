# Private Materials

The original source materials are stored only as an encrypted archive:

```text
encrypted-materials/personal-materials.zip.aes
```

To decrypt it, run this command from the repository root in PowerShell:

```powershell
.\scripts\decrypt-personal-materials.ps1 `
  -InputFile ".\encrypted-materials\personal-materials.zip.aes" `
  -OutputFile ".\personal-materials.zip"
```

The script will ask for the archive password.

Do not commit decrypted files back into Git.
