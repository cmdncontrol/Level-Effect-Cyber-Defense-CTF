# Pasta filiformis

## Description

On to the second course, pasta filiformis with a tangy reduction. Save room for dessert!

## Files

* [entre.zip](files/entre.zip)



## Solution

CyberChef Recipe

From_Base64('A-Za-z0-9+/=',true,false)
From_Morse_Code('Space','Line feed')
Find_/_Replace({'option':'Regex','string':'ZERO'},'0',true,false,true,false)
Find_/_Replace({'option':'Regex','string':'ONE'},'1',true,false,true,false)
Find_/_Replace({'option':'Regex','string':'ZER'},'0',true,false,true,false)
Find_/_Replace({'option':'Regex','string':'ERO'},'0',true,false,true,false)
Find_/_Replace({'option':'Regex','string':'RO'},'0',true,false,true,false)
From_Binary('Space',8)
From_Base32('A-Z2-7=',false)
ROT13(true,true,false,17)



**Flag: leveleffect{7h475_4_sp1cy_m347b411}**
