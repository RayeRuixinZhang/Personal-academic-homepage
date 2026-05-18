# Private Materials

This repository includes an encrypted archive of the original private homepage materials:

```text
encrypted-materials/personal-materials.zip.aes
```

The archive contains the original local `个人素材/` folder, including source CV and publication files.

## Why It Is Encrypted

The source materials may include personal information and large research files. They are not intended to be browsed publicly as plain repository files.

## How To Decrypt

Run this command from the repository root in PowerShell:

```powershell
.\scripts\decrypt-personal-materials.ps1 `
  -InputFile ".\encrypted-materials\personal-materials.zip.aes" `
  -OutputFile ".\personal-materials.zip"
```

The script will prompt for the archive password.

After decryption, extract `personal-materials.zip` locally.

## Important

Do not commit decrypted private materials back into Git.

The repository `.gitignore` excludes the original `个人素材/` folder and publication PDFs by default.
