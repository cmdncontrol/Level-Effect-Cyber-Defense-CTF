# Fragmented

## Description

It's a good habit to be suspicious of shortened links, but this one might be worth looking at a little more closely...

`https://bitly.cx/DwjQc`

I used [Unshorten that URL! - Unshorten.It!](https://unshorten.it/) to find the true URL behind the bitly link.

```
https://www.howsweeteats.com/2020/05/baked-beans/#bGV2ZWxlZmZlY3QlN0I2NjcyMzQ2NzZkMzM2ZTc0MzUlN0Q=
```

The end of this looked to be base64, so I used cyberchef to decode.

```
leveleffect%7B667234676d336e7435%7D
```

Using the hex decode function in Cyberchef I was able to reveal the full flag

```
leveleffect{fr4gm3nt5}
```


