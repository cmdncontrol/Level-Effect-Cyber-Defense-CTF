# Shortcut

## Description

The key to solving this challenge is LNKing things together!

Password to open archive: `infected`

*NOTE* - You can also access the challenge files on the `Cyber Defense CTF Triage Workstation` VM on our [hosted platform](https://training.leveleffect.com/courses/f4a9466f-edb0-42ff-bb0e-a95af2b05de5).

WARNING - This challenge has malware-like behavior involved. Do not run this on your personal machine. Use a VM in the Level Effect CTF course or your own. 

## Files

* [shortcut.zip](files/shortcut.zip)

## Solution

Update the "Target" of GetFlag.LNK to

```
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ep Bypass -nop -File "C:\Cyber Defense CTF\Shortcut\flag.ps1" "open"
```

This will ensure the shortcut calls flag.ps1

When we launch GetFlag now, we get this response

```
That's only part of the passphrase you have there...
```

and then the window closes

Examine flag.ps1 further...

```powershell
param ([string]$cGFydDE)

$Y2hlY2tIYXNo = ('2348f'+'9'+'987'+'442125'+'7'+'5d8595'+'9'+'674f9'+'607ab26f6'+'7708a'+'9171574728323'+'86337c9'+'04')
$YXJnSGFzaA = [BitConverter]::"TOs`Tri`NG"([Security.Cryptography.SHA256]::"cre`A`TE"()."COmp`UTE`hA`Sh"([Text.encoding]::"u`TF8"."geTb`yt`es"($cGFydDE)))."rE`PLAce"("-", "")."t`Olo`WER"()

if ($YXJnSGFzaA -eq $Y2hlY2tIYXNo) {
    $ZW5j = [Convert]::"FROmB`As`E`64sTri`Ng"(('k+pPN'+'S6'+'diYRE'+'xok'+'cOJhw3C+Zim2e'+'nMC6zgfJ'+'v'+'vJVZTUW7mXo513bM'+'n'+'xLSQ'+'Mhn'+'b'+'D'+'f'))

    $c2FsdA = [byte[]]::"n`Ew"(8)
    $aXRlcg = 10000
    $a2V5 = [Security.Cryptography.Rfc2898DeriveBytes]::"N`eW"($cGFydDE, $c2FsdA, $aXRlcg)."GE`TBYT`ES"(32)
    $aXY = [byte[]]::"n`ew"(16)

    $YWVz = [Security.Cryptography.Aes]::"CRE`ATE"()
    $YWVz."K`EY" = $a2V5
    $YWVz."I`V" = $aXY

    $ZGVj = [Text.encoding]::"ut`F8"."gEts`T`RiNg"($YWVz."cREA`Te`de`cRYPtOR"()."t`Ra`NsFoRMF`i`NalBLO`Ck"($ZW5j, 0, $ZW5j."leN`Gth"))

    $YzJWellXMWw = [Text.encoding]::"UT`F8"."GetS`T`RInG"([Convert]::"FROM`BaS`e64s`Tri`Ng"(('c2'+'VzYW1'+'l')))
    if ($env:P2 -eq $YzJWellXMWw) {
        .('Writ'+'e-O'+'utpu'+'t') ('Nic'+'e '+'work'+'!'+' '+(('Here'+'ca'+'Ks ') -replace ([Char]99+[Char]97+[Char]75),[Char]39)+'yo'+'ur '+'flag:'+' '+"$ZGVj")
        .('Sta'+'rt-Slee'+'p') -Seconds 10
    } else {
        .('Write'+'-O'+'ut'+'put') (('ThatXh0s on'+'ly '+'o'+'ne c'+'orr'+'ect p'+'art'+' of'+' the '+'pas'+'sp'+'h'+'ra'+'se you '+'ha'+'ve'+' the'+'re '+'..'+'.')."ReP`La`cE"(([cHAR]88+[cHAR]104+[cHAR]48),[sTrING][cHAR]39))
        .('S'+'t'+'art-Slee'+'p') -Seconds 2
    }
} else {
    &('Wri'+'te-O'+'utp'+'ut') ('Ex'+'i'+'ting'+' ...')
    .('Start'+'-'+'Sleep') -Seconds 2
}
```

We can see that we executed the else clause of this statement

```powershell
c2'+'VzYW1'+'l')))
    if ($env:P2 -eq $YzJWellXMWw) {
        .('Writ'+'e-O'+'utpu'+'t') ('Nic'+'e '+'work'+'!'+' '+(('Here'+'ca'+'Ks ') -replace ([Char]99+[Char]97+[Char]75),[Char]39)+'yo'+'ur '+'flag:'+' '+"$ZGVj")
        .('Sta'+'rt-Slee'+'p') -Seconds 10
    } else {
        .('Write'+'-O'+'ut'+'put') (('ThatXh0s on'+'ly '+'o'+'ne c'+'orr'+'ect p'+'art'+' of'+' the '+'pas'+'sp'+'h'+'ra'+'se you '+'ha'+'ve'+' the'+'re '+'..'+'.')."ReP`La`cE"(([cHAR]88+[cHAR]104+[cHAR]48),[sTrING][cHAR]39))
        .('S'+'t'+'art
```

Right above it, we can see it looks like if we had matched that condition we would get the flag. Simply replace the output of the else statement with what is in the if statement, like below:

```powershell
param ([string]$cGFydDE)

$Y2hlY2tIYXNo = ('2348f'+'9'+'987'+'442125'+'7'+'5d8595'+'9'+'674f9'+'607ab26f6'+'7708a'+'9171574728323'+'86337c9'+'04')
$YXJnSGFzaA = [BitConverter]::"TOs`Tri`NG"([Security.Cryptography.SHA256]::"cre`A`TE"()."COmp`UTE`hA`Sh"([Text.encoding]::"u`TF8"."geTb`yt`es"($cGFydDE)))."rE`PLAce"("-", "")."t`Olo`WER"()

if ($YXJnSGFzaA -eq $Y2hlY2tIYXNo) {
    $ZW5j = [Convert]::"FROmB`As`E`64sTri`Ng"(('k+pPN'+'S6'+'diYRE'+'xok'+'cOJhw3C+Zim2e'+'nMC6zgfJ'+'v'+'vJVZTUW7mXo513bM'+'n'+'xLSQ'+'Mhn'+'b'+'D'+'f'))

    $c2FsdA = [byte[]]::"n`Ew"(8)
    $aXRlcg = 10000
    $a2V5 = [Security.Cryptography.Rfc2898DeriveBytes]::"N`eW"($cGFydDE, $c2FsdA, $aXRlcg)."GE`TBYT`ES"(32)
    $aXY = [byte[]]::"n`ew"(16)

    $YWVz = [Security.Cryptography.Aes]::"CRE`ATE"()
    $YWVz."K`EY" = $a2V5
    $YWVz."I`V" = $aXY

    $ZGVj = [Text.encoding]::"ut`F8"."gEts`T`RiNg"($YWVz."cREA`Te`de`cRYPtOR"()."t`Ra`NsFoRMF`i`NalBLO`Ck"($ZW5j, 0, $ZW5j."leN`Gth"))

    $YzJWellXMWw = [Text.encoding]::"UT`F8"."GetS`T`RInG"([Convert]::"FROM`BaS`e64s`Tri`Ng"(('c2'+'VzYW1'+'l')))
    if ($env:P2 -eq $YzJWellXMWw) {
        .('Writ'+'e-O'+'utpu'+'t') ('Nic'+'e '+'work'+'!'+' '+(('Here'+'ca'+'Ks ') -replace ([Char]99+[Char]97+[Char]75),[Char]39)+'yo'+'ur '+'flag:'+' '+"$ZGVj")
        .('Sta'+'rt-Slee'+'p') -Seconds 10
    } else {
        .('Writ'+'e-O'+'utpu'+'t') ('Nic'+'e '+'work'+'!'+' '+(('Here'+'ca'+'Ks ') -replace ([Char]99+[Char]97+[Char]75),[Char]39)+'yo'+'ur '+'flag:'+' '+"$ZGVj")
        .('Sta'+'rt-Slee'+'p') -Seconds 10
    }
} else {
    &('Wri'+'te-O'+'utp'+'ut') ('Ex'+'i'+'ting'+' ...')
    .('Start'+'-'+'Sleep') -Seconds 2
}
```

Save the new script and launch GetFlag.lnk

```
Nice work! Here's your flag: leveleffect{threat_actors_love_shortcuts}
```

```
leveleffect{threat_actors_love_shortcuts}
```
