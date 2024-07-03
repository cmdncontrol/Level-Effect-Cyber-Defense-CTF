# Haystack

## Description

The flag is in here somewhere...

## Files

* [haystack.zip](files/haystack.zip)



## Solution



```bash
#!/bin/bash

# Function to search for hex string in a file
search_file() {
    file_path="$1"
    hex_string="62 47 56 32 5a 57 78 6c 5a 6d 5a 6c 59 33 52 37 5a 6d 46 72 5a 56 39 6d 62 47 46 6e 66 51 3d 3d"

    # Remove spaces from hex string
    

    if ! grep -q "$hex_string" "$file_path"; then
        echo "File $file_path does NOT contain the specified hex string."
    fi
}

# Main function to recursively search through directory
search_directory() {
    dir_path="$1"

    # Find all files recursively in directory
    while IFS= read -r -d '' file; do
        search_file "$file"
    done < <(find "$dir_path" -type f -print0)
}

# Specify the directory to search recursively
root_dir="/home/kali/Desktop/Level Effect CTF/haystack"

# Execute the search
search_directory "$root_dir"

```

```bash
┌──(kali㉿kali)-[~/Desktop]
└─$ ./tester1.sh
File /home/kali/Desktop/Level Effect CTF/haystack/Level17/Effect13/flag37.txt does NOT contain the specified hex string.
```



**Flag: leveleffect{r3g3x_ftw}**


