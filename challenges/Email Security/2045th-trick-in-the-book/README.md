# 2045th trick in the book

## Description

This is a common encoding system that phishers abuse in their endless quest to bypass email scanners. Can you figure out what it is?

```
=C6=96=D0=B5=CE=BD=D0=B5=C6=96=D0=B5=C6=92=C6=92=D0=B5=D1=81=C5=A5{=D4=81=
=CE=BF=D5=B8=C5=A5=5F=D1=98=CA=8B=D1=95=C5=A5=5F=D1=81=CE=BF=D1=80=D1=83=5F=
=D1=80=D0=B0=D1=95=C5=A5=D0=B5=5F=C5=A5=C4=A7=D1=96=D1=95=5F=D1=96=D5=B8=
=C5=A5=CE=BF=5F=C5=A5=C4=A7=D0=B5=5F=D0=AC=CE=BF=D1=85}
```



I used [Encode/Decode Quoted Printable - Webatic](https://www.webatic.com/quoted-printable-convertor) to decode this quoted printable encoding. 



The decode was:

```
ƖеνеƖеƒƒесť{ԁοոť_јʋѕť_сοру_раѕťе_ťħіѕ_іոťο_ťħе_Ьοх}
```

As you can see it advises not to copy and paste, so you must rewrite it due to invalid chars.



Flag:

```
leveleffect{dont_just_copy_paste_this_into_the_box}
```


