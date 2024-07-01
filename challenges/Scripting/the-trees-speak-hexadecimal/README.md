# The trees speak hexadecimal

## Description

As a result of their investigation, the Incident Response team has identified 10 malicious files and provided us the "bad" hashes in `iocs.txt`.

They have also collected various file hashes across 20 different hosts on our network. These are stored in text files where each host has its own file containing 40 hashes, all bundled up in `collections.zip`. The bad hashes are likely present in some of the collections.

Your objective is to identify the number of occurrences of each bad hash across the host collection files. The flag is the sum of the occurrences of all bad hashes.

**Note:** You have 3 attempts max to get the right number

## Files

* [iocs.txt](files/iocs.txt)

* [collections.zip](files/collections.zip)

