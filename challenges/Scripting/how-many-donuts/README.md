# How many donuts?

## Description

Samwise, I've had enough of your lembas bread. I want donuts. How many you ask? well I wrote you a script. It mostly works, but the answer will be revealed when it does. I mean at least a couple of them!

## Files

* [HowManyDonuts.sh](files/HowManyDonuts.sh)

## Solution

```bash
#!/bin/bash

# Define the list of ASCII values
ascii_values=(102 104 116 122 117 113 106 116 107 103 116 125 106 115)

# Function to convert ASCII values to characters and print them as a word
print_word_from_ascii() {
    local word=""
    for value in "${ascii_values[@]}"; do
        char=$(printf "\\$(printf "%o" "$value")")
        word+="$char"
    done
    echo "$word"
}

# Loop to print the word 3 times, decreasing ASCII values each time
for i in {1..26}; do
    print_word_from_ascii "${ascii_values[@]}"
    # Decrease each ASCII value by 11
    for j in "${!ascii_values[@]}"; do
        ascii_values[j]=$((ascii_values[j]-1))
    done
done
```

**Flag: acoupleofboxen**
