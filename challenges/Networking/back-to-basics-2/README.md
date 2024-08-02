# Back to basics 2

## Description

Which nameserver is the SOA (Start of Authority) for the [leveleffect.com](https://www.leveleffect.com/) domain?



```bash
nslookup -q=soa leveleffect.com
```

output

```bash
Server:		192.168.1.254
Address:	192.168.1.254#53

Non-authoritative answer:
leveleffect.com
	origin = ns-1327.awsdns-37.org
	mail addr = awsdns-hostmaster.amazon.com
	serial = 2020012400
	refresh = 7200
	retry = 900
	expire = 1209600
	minimum = 86400

Authoritative answers can be found from:
```



```
leveleffect{ns-1327.awsdns-37.org}
```


