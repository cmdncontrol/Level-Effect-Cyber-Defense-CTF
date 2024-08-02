# If only it were this easy

## Description

Flag: `577ca2e5adb9dc46b44f668923055b238243f9b398c670584430e1e327141949ed345afce50fa4c9de130d3c331936cebd5104206a959daf74b9f15b68cfb193`

Key: `00112233445566778899aabbccddeeff00112233445566778899aabbccddeeff`

IV: `0102030405060708090a0b0c0d0e0f10`



The Key and IV indicate this is AES encrypted. We can use Cyberchef to decrypt it. The result appears to be base64, so we can add that on to the end of our recipe.



![](/images/aes.png)



Flag: **leveleffect{keys_are_meant_to_be_kept}**
