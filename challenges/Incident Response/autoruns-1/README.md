# Autoruns 1

## Description

Attackers compromised this Windows host and riddled it with persistence mechanisms in a see-what-sticks effort to maintain a foothold on the system. Can you find the first persistence mechanism?

*NOTE* - The resources needed for this challenge are on the `Cyber Defense CTF - Autoruns Challenges` VM on our [hosted platform](https://training.leveleffect.com/courses/f4a9466f-edb0-42ff-bb0e-a95af2b05de5).



Using the Autoruns application provided on the host revealed many findings. 



![](/images/AR1.png)



After inspecting that init.vbs file, it directed us to look in the Temp folder for the out.txt file.

![](/images/vbs.png)



At the bottom of the out.txt was our flag.



```

```


