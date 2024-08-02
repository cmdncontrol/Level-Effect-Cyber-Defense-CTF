# Drip drop

## Description

A host on the network was compromised and the threat actor was likely able to exfiltrate sensitive information. They did well to hide their tracks on the endpoint, but fortunately we have a traffic capture from around the time of intrusion. Can you determine if any data was stolen?

## Files

* [exfil.pcap](files/exfil.pcap)

## Solution

By using Wireshark and searching through TCP streams we can find the below. The packet also says a hint of this may be needed later...

{"username": "3e1d1f4c8a7b456a9f4d5b3f2c6e8a1d", "password": "5b8e2a27dc43bc967c435a7c8c3ab0fc5294b4c0a27c68719a621f0348be5c1a"}HTTP/1.



The python script below will look at all Type 8  ICMP Echo requests and pull the time between them to determine if it took more or less than 1 second. 

```python
from scapy.all import rdpcap, ICMP
import sys

def get_icmp_request_intervals(pcap_file):
    """
    Extract and print concatenated time differences between consecutive ICMP Echo Requests from a PCAP file.
    """
    try:
        packets = rdpcap(pcap_file)
    except Exception as e:
        print(f"Error reading PCAP file: {e}")
        return
    
    # Find ICMP Echo Requests and their timestamps
    icmp_requests = [packet.time for packet in packets if packet.haslayer(ICMP) and packet[ICMP].type == 8]
    
    if not icmp_requests:
        print("No ICMP Echo Requests found in the PCAP file.")
        return
    
    # Calculate time differences (in seconds) between consecutive ICMP requests
    time_differences = [str(int(icmp_requests[i] - icmp_requests[i - 1])) for i in range(1, len(icmp_requests))]
    
    # Concatenate all time differences into one line
    time_difference = ''.join(time_differences)
    print(time_difference)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python extract_time_differences.py <pcap_file>")
    else:
        pcap_file = sys.argv[1]
        get_icmp_request_intervals(pcap_file)


```

Output:

```
011000110110010101100101001101100011001100110000011001010011000001100011011000010011001101100101001100010011001001100100011000010011011001100101001100000110001100111001001101000011001100110000001101000011001000110010001100010110001100110111011001010110001100110110001100010011011100110010001100100110010001100101001100010011011000110111011000110011001101100010001101000110010100110001001101100011001000111000001101010011011001100011011000100011100100110001001100010110001101100110001101100110010001100011001101100011001100110010001100110011000100110100001100110011010101100001001100010011001001100011001101110011001100110011001101010011001001100010011001100110000100111000001101100110010100110110001110000011011000110110001100010011010100110111001100110110000101100010
```



Use CyberChef to decode this binary

```
cee630e0ca3e12da6e0c94304221c7ec61722de167c3b4e162856cb911cf6dc63231435a12c73352bfa86e68661573ab
```



We can then use CyberChef with AES decrypt to find the message. The Key and IV are the username and pass we found earlier.



![](/images/drip.png)



```
leveleffect{ping_exfil_with_a_twist}
```
