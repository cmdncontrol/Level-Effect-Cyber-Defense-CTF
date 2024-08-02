# Newws flash 2

## Description

Our detections hit on the file hash `b1f2068201c29f3b00aeedc0911498043d7c204a860ca16b3fef47fc19fc2b22`. The sample is observed to create a registry Run key under HKCU. Can you find the name of the file that key is set to execute?

WARNING - the sample referenced is actual malware seen in the wild. If you choose to analyze the sample yourself, make sure you know what you're doing and take care to follow proper handling procedure.



Again using VirusTotal to hunt for details on this hash we were able to find the answer

https://www.virustotal.com/gui/file/b1f2068201c29f3b00aeedc0911498043d7c204a860ca16b3fef47fc19fc2b22/behavior





```
leveleffect{MyApp.vbs}
```


