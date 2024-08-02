# The trees speak hexadecimal

## Description

As a result of their investigation, the Incident Response team has identified 10 malicious files and provided us the "bad" hashes in `iocs.txt`.

They have also collected various file hashes across 20 different hosts on our network. These are stored in text files where each host has its own file containing 40 hashes, all bundled up in `collections.zip`. The bad hashes are likely present in some of the collections.

Your objective is to identify the number of occurrences of each bad hash across the host collection files. The flag is the sum of the occurrences of all bad hashes.

**Note:** You have 3 attempts max to get the right number

## Files

* [iocs.txt](files/iocs.txt)

* [collections.zip](files/collections.zip)

## Solution

```powershell
# Array of strings to search for
$stringsToSearch = @(
    "ca8a6a03ae73140e7861b6f0461e6292458d8fdd7dcb3158fe208abde621efba",
    "2f1aae46b83a5d4c8dd1058e07e23321ade1f62d0f10268e012c1b91e488c103",
    "bcf6f24f75b24632bff02ece539132da2f89a5d003c08ab9f72240f9b5e38dbf",
    "a981d04c6c1a807f527ba462e52bafcc204e1305f4747211882a066531f3d12c",
    "bb817916308d0a1d511a3c5eaf1d3f9ae3321ab5a6059cae0b76681289c24964",
    "b1554aa6ea319894b2baa934211e315141406526ce7e60caec0e9ca6affeccf2",
    "3ed304f58443cd05e97314f9a31aada71d8c1b4357817c1623d4abb61bdc04b5",
    "d95b6e3ba5921e1fcf24a4c71c37fb3c0b87ba10668f5e78edd80394524aee19",
    "840e95c6db82474153ecdc2844e8f07ad9a653e075f8c4f2e08b270f4b228ba8",
    "ff56dace3f4a4a4e6e3b17025db82ca6373654233b8ece7127a0b75a53239fe1"
)

# Folder path to search
$folderPath = "Insert path to collections folder"

# Initialize a counter array for each string
$occurrenceCount = @{}
foreach ($str in $stringsToSearch) {
    $occurrenceCount[$str] = 0
}

# Search through each file in the folder
Get-ChildItem -Path $folderPath -File | ForEach-Object {
    $filePath = $_.FullName
    $fileContent = Get-Content -Path $filePath -Raw

    # Count occurrences of each string in the file content
    foreach ($str in $stringsToSearch) {
        $occurrences = ([regex]::Matches($fileContent, [regex]::Escape($str))).Count
        $occurrenceCount[$str] += $occurrences
    }
}

# Output the results
foreach ($str in $stringsToSearch) {
    "String '$str' occurred $($occurrenceCount[$str]) times."
}
```

```powershell
String 'ca8a6a03ae73140e7861b6f0461e6292458d8fdd7dcb3158fe208abde621efba' occurred 3 times.
String '2f1aae46b83a5d4c8dd1058e07e23321ade1f62d0f10268e012c1b91e488c103' occurred 0 times.
String 'bcf6f24f75b24632bff02ece539132da2f89a5d003c08ab9f72240f9b5e38dbf' occurred 0 times.
String 'a981d04c6c1a807f527ba462e52bafcc204e1305f4747211882a066531f3d12c' occurred 5 times.
String 'bb817916308d0a1d511a3c5eaf1d3f9ae3321ab5a6059cae0b76681289c24964' occurred 1 times.
String 'b1554aa6ea319894b2baa934211e315141406526ce7e60caec0e9ca6affeccf2' occurred 0 times.
String '3ed304f58443cd05e97314f9a31aada71d8c1b4357817c1623d4abb61bdc04b5' occurred 4 times.
String 'd95b6e3ba5921e1fcf24a4c71c37fb3c0b87ba10668f5e78edd80394524aee19' occurred 2 times.
String '840e95c6db82474153ecdc2844e8f07ad9a653e075f8c4f2e08b270f4b228ba8' occurred 0 times.
String 'ff56dace3f4a4a4e6e3b17025db82ca6373654233b8ece7127a0b75a53239fe1' occurred 1 times.
```

```
16
```
