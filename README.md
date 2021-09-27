"NetSwitchParanoid"

COPYRIGHT © 2021 Omicron Software di A.P. (ITALY), All Eligible Rights Reserved.


THE IDEA

Hackers/viruses/malware/bots often rely on a constant/permanent connection to forge malicious packets, to perform TCP/UDP scans of opened ports, to manage a victim's machine remotely. This script mitigates some attacks by making system's penetration harder, painfully annoying and irritating.
With a dynamic ip-address and a randomized mac-address (when possible), resetting the connections at a reasonably short interval is a simple yet effective method against most attacks. Streaming services are unipterruted and user's experience isn't affected at all while hackers' experience gets dented hard...
Nowadays attacks revolve around frustration. This scripts "fights fire with fire", frustrating the "frustrators", if you know what I mean...

DEPENDENCIES

nmcli, bash


HOW TO USE

Make the script executable (right-click on the script/preferences/permissions/check "allow executing file as program");
drag&drop the script from its folder to the terminal window and press enter.
Alternatively, load it as startup application in your system.

In the terminal, you should see something like the following:
[user@computer ~]$ '/home/user/Downloads/NetSwitchParanoid-master/NetSwitchParanoid.sh'


DESCRIPTION

The script assumes interfaces to be connected and disconnects them no matter what.
Sleep timers can be changed at will.
Change NAME_OF_INTERFACE_1 and NAME_OF_INTERFACE_2 to match your physical interfaces, for example enp2s0f1 and cdc-wdm0.
Change 'path/to/THIS/script/NetSwitchParanoid.sh' accordingly, example '/home/user/Downloads/master/NetSwitchParanoid.sh'.
Uncomment and modify accordingly NAME_OF_INTERFACE_N, netswitchparanoidN and interfaceN if you need to switch between more than 2 interfaces.


TODO LIST

- Proper random number generation in a custom range.
- Random interface selection from an array of interfaces.
- Random tunnel/vpn activation from an array of options.

