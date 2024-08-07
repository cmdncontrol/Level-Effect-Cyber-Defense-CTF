# Perfect match

## Description

Regex - love it or hate it, it's an invaluable skill to have as a defender.

The goal of this challenge is to extract all IPv4 addresses from the contents of the file `input.txt` . A starter script has been provided below and by download. All you need to do is insert a regex pattern to finish the job. You can submit your code in the code submission box.

Note: If you write your own script, you must read in the data from `input.txt` specifically as shown in the example.

Starter script:

```python
import re

PATTERN = re.compile(r'YOUR PATTERN HERE')

def extract_ips(data):
    ips = PATTERN.findall(data)

    unique_ips = []
    [unique_ips.append(str(ip)) for ip in ips if ip not in unique_ips]

    return unique_ips

def main():
    with open("input.txt") as f:
        data = f.read()
        extracted_ips = extract_ips(data)

    for ip in extracted_ips:
        print(ip)

main()
```

Code submission box:

## Files

* [extract.py](files/extract.py)

* [input.txt](files/input.txt)

## Solution

To get this regex correct you have to ensure that you are only capturing IP addresses that are valid. If you focus on just capturing 4 octets you will get results that are "valid" based on the file, but aren't true IPv4 addresses. This had me hung up for a little bit.

```python
import re

PATTERN = re.compile(r'\b((?:25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\.(?:25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\.(?:25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\.(?:25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9]))\b')

def extract_ips(data):
    ips = PATTERN.findall(data)

    unique_ips = []
    [unique_ips.append(str(ip)) for ip in ips if ip not in unique_ips]

    return unique_ips

def main():
    with open("input.txt") as f:
        data = f.read()
        extracted_ips = extract_ips(data)

    for ip in extracted_ips:
        print(ip)

main()
```
