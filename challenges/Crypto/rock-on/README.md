# Rock on

## Description

Getting it out is the easy part, but good luck getting in.

## Files

* [capture.pcap](files/capture.pcap)



## Solution

The pcap reveals a zip file called flag.zip. 

Go to File -> Export Objects -> HTTP -> select the flag.zip and save the file

When you try to open it you will realize the zip file and pdf file are password protected. 



John to the rescue!

``` 
zip2john flag.zip > hash.txt
john --wordlist=/usr/share/wordlists/rockyou.txt hash.txt 
```

Output:

```bash
┌──(kali㉿kali)-[~/Desktop]
└─$ john --wordlist=/usr/share/wordlists/rockyou.txt hash.txt 
Using default input encoding: UTF-8
Loaded 1 password hash (PKZIP [32/64])
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, almost any other key for status
Cena.John.Rulz   (flag.zip/flag.pdf)     
1g 0:00:00:00 DONE (2024-07-03 17:15) 4.166g/s 8977Kp/s 8977Kc/s 8977KC/s Chili1..CARIÑOSA
Use the "--show" option to display all of the cracked passwords reliably
Session completed. 

```

Password 1: Cena.John.Rulz



This password can be used to extract the PDF file flag.pdf. If you're like me you'll repeatedly slam this password into the PDF until you realize it's clearly not right...



Let's use pdf2john to extract the hash and crack it

```bash
pdf2john flag.pdf > hash1.txt
john --wordlist=/usr/share/wordlists/rockyou.txt hash1.txt
```

Output:

```bash
┌──(kali㉿kali)-[~/Desktop]
└─$ john --wordlist=/usr/share/wordlists/rockyou.txt hash1.txt 
Using default input encoding: UTF-8
Loaded 1 password hash (PDF [MD5 SHA2 RC4/AES 32/64])
Cost 1 (revision) is 3 for all loaded hashes
Will run 2 OpenMP threads
Press 'q' or Ctrl-C to abort, almost any other key for status
Fcrunner1337     (flag.pdf)     
1g 0:00:00:18 DONE (2024-07-03 17:18) 0.05540g/s 118589p/s 118589c/s 118589C/s Felix2..Fcdr123
Use the "--show --format=PDF" options to display all of the cracked passwords reliably
Session completed. 

```

Password 2: Fcrunner1337



Unlock the PDF and you'll find your flag.



**Flag: leveleffect{l375_g37_cr4ck1n}**


