#!/bin/bash

# You wanted to know how many donuts I wanted? I wrote a script for you that will provide you the answer. Pretty sure it works - I think.

# Define the list of ASCII values
ascii_values=(102 104 116 122 117 113 106 116 107 103 116 125 106 115)

# Function to convert ASCII values to characters and print them as a word
print_word_from_ascii() {
    local word=""
    for value in "${ascii_values[@]}"; do
        char=$(printf "\\$(printf "$value")")
        word+="$char"
        word+="$char"
    done
    echo "$word"
}

# Loop to print the word 5 times, decreasing ASCII values each time
for i in {1..3}; do
    print_word_from_ascii "${ascii_values[@]}"
    # Decrease each ASCII value by 1
    for j in "${!ascii_values[@]}"; do
        ascii_values[j]=$((ascii_values[j]-11))
    done
done