# Mangled

## Description

Pack? Sure. Unpack? Well...

Password to open archive: `infected`

*NOTE* - You can also access the challenge files on the `Cyber Defense CTF Triage Workstation` VM on our [hosted platform](https://training.leveleffect.com/courses/f4a9466f-edb0-42ff-bb0e-a95af2b05de5).

WARNING - This challenge has malware-like behavior involved. Do not run this on your personal machine. Use a VM in the Level Effect CTF course or your own. 

## Files

* [packed-flag.zip](files/packed-flag.zip)

## Solution

This executable is packed by UPX as we can see when we run it through Detect It Easy, but we cannot use UPX to unpack it. 



Using x64dbg I was able to find the tail jump at

Address: 00007FF6FD0DB9BB

Disassembly: jmp packed-flag.7FF6FD0C10ED



Set a hardware breakpoint and remove any other breakpoints. Run the program until it hits this breakpoint and step into the instruction so that way it jumps to the Original Entry Point at: 00007FF6FD0C10ED 



Then click the strings icon represented by a capital A to reveal the strings in the unpacked program. 



![image]()



**Flag: leveleffect{upx_i_did_it_again}**
