# Autoruns 5

## Description

Attackers compromised this Windows host and riddled it with persistence mechanisms in a see-what-sticks effort to maintain a foothold on the system. Can you find the fifth persistence mechanism?

This one's a little weird.

*NOTE* - The resources needed for this challenge are on the `Cyber Defense CTF - Autoruns Challenges` VM on our [hosted platform](https://training.leveleffect.com/courses/f4a9466f-edb0-42ff-bb0e-a95af2b05de5).



This one stumped me for a long time. Eventually, after exhausting all other options I viewed the Recycling Bin. This contained a file with a bunch of Base64. I used Cyberchef to decode it and revealed the flag. 

```
VGhlIGNhdCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu
QWZ0ZXIgYSBsb25nIGRheSBhdCB0aGUgZmFjdG9yeSwgQm9iIHNsZXB0IGZvciBhZ2VzLg==
VGhlIHN1biBzZXQgYmVoaW5kIHRoZSBtb3VudGFpbnMsIHBhaW50aW5nIHRoZSBza3kgaW4gc2hhZGVzIG9mIHBpbmsgYW5kIG9yYW5nZS4=
SGUgY291bGRuJ3QgYmVsaWV2ZSBoaXMgbHVjayB3aGVuIGhlIGZvdW5kIGEgcmFyZSBjb2luIGJ1cmllZCBpbiB0aGUgZ2FyZGVuLg==
SW4gdGhlIGhlYXJ0IG9mIHRoZSBjaXR5LCBsaWZlIGJ1enplZCB3aXRoIGVuZXJneSBhbmQgZXhjaXRlbWVudC4=
VGhlIG9sZCBvYWsgdHJlZSBzdG9vZCB0YWxsLCBpdHMgYnJhbmNoZXMgcmVhY2hpbmcgdG93YXJkcyB0aGUgc2t5Lg==
VGhlcmUgd2Fzbid0IGEgc2luZ2xlIHRoaW5nIGRpZmZlcmVudC4=
bGV2ZWxlZmZlY3R7b25lX21hbnNfdHJhc2hfYW5vdGhlcl9tYW5zX3RyZWFzdXJlfQ==
U2hlIGxhdWdoZWQgc28gaGFyZCB0aGF0IHRlYXJzIHN0cmVhbWVkIGRvd24gaGVyIGNoZWVrcy4=
VGhleSBzYWlsZWQgYWNyb3NzIHRoZSBvY2VhbiwgY2hhc2luZyB0aGUgaG9yaXpvbi4=
VGhlIHNtZWxsIG9mIGZyZXNobHkgYmFrZWQgYnJlYWQgZmlsbGVkIHRoZSBhaXIsIG1ha2luZyBldmVyeW9uZSBodW5ncnku
QXMgdGhlIHJhaW4gZmVsbCBzb2Z0bHkgb3V0c2lkZSwgc2hlIGN1cmxlZCB1cCB3aXRoIGEgZ29vZCBib29rIGFuZCBhIGN1cCBvZiB0ZWEu
```

Decoded:

```
The cat jumped over the lazy dog.After a long day at the factory, Bob slept for ages.The sun set behind the mountains, painting the sky in shades of pink and orange.He couldn't believe his luck when he found a rare coin buried in the garden.In the heart of the city, life buzzed with energy and excitement.The old oak tree stood tall, its branches reaching towards the sky.There wasn't a single thing different.leveleffect{one_mans_trash_another_mans_treasure}She laughed so hard that tears streamed down her cheeks.They sailed across the ocean, chasing the horizon.The smell of freshly baked bread filled the air, making everyone hungry.As the rain fell softly outside, she curled up with a good book and a cup of tea.
```



```
leveleffect{one_mans_trash_another_mans_treasure
```


