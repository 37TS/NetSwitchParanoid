#!/bin/bash
#COPYRIGHT© 2021 Omicron Software di A.P. (ITALY), All Eligible Rights Reserved.
#The script assumes interfaces to be connected and disconnects them no matter what.
#Sleep timers can be changed at will.
#Change NAME_OF_INTERFACE_1 and NAME_OF_INTERFACE_2 to match your physical interfaces, for example enp2s0f1 and cdc-wdm0.
#Change 'path/to/THIS/script/NetSwitchParanoid.sh' accordingly, example '/home/user/Downloads/master/NetSwitchParanoid.sh'.
#Uncomment and modify accordingly netswitchparanoidN, NAME_OF_INTERFACE_N and interfaceN if you need to switch between more than 2 interfaces.

interface1 () {
	nmcli device disconnect NAME_OF_INTERFACE_1 2> /dev/null
	sleep 1.37
	nmcli device connect NAME_OF_INTERFACE_1 
}

interface2 () {
	nmcli device disconnect NAME_OF_INTERFACE_2 2> /dev/null
	sleep 1.37
	nmcli device connect NAME_OF_INTERFACE_2
}

#interfaceN () {
#	nmcli device disconnect NAME_OF_INTERFACE_N 2> /dev/null
#	sleep 1.37
#	nmcli device connect NAME_OF_INTERFACE_N
#}

netswitchparanoid () {
	nmcli device disconnect NAME_OF_INTERFACE_1 2> /dev/null
	sleep 0.37
	nmcli device disconnect NAME_OF_INTERFACE_2 2> /dev/null
}

#netswitchparanoidN () {
#	nmcli device disconnect NAME_OF_INTERFACE_1 2> /dev/null
#	sleep 0.37
#	nmcli device disconnect NAME_OF_INTERFACE_2 2> /dev/null
#	sleep 0.37
#	nmcli device disconnect NAME_OF_INTERFACE_N 2> /dev/null
#}

echo " ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
echo " ░▒█▄░▒█░█▀▀░▀█▀░▒█▀▀▀█░█░░░█░░▀░░▀█▀░█▀▄░█░░░░"
echo " ░▒█▒█▒█░█▀▀░░█░░░▀▀▀▄▄░▀▄█▄▀░░█▀░░█░░█░░░█▀▀█░"
echo " ░▒█░░▀█░▀▀▀░░▀░░▒█▄▄▄█░░▀░▀░░▀▀▀░░▀░░▀▀▀░▀░░▀░"
echo " ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
echo " ░░░▒█▀▀█░█▀▀▄░█▀▀▄░█▀▀▄░█▀▀▄░▄▀▀▄░░▀░░▒█▀▀▄░░░"
echo " ░░░▒█▄▄█░█▄▄█░█▄▄▀░█▄▄█░█░▒█░█░░█░░█▀░▒█░▒█░░░"
echo " ░░░▒█░░░░▀░░▀░▀░▀▀░▀░░▀░▀░░▀░░▀▀░░▀▀▀░▒█▄▄█░░░"
echo " ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
echo " ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
echo " ▒ENDLESS LOOP BEGINS...                      ▒"
echo " ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
echo " "
echo "▒▒PREPARING TO CONNECT INTERFACE 1, DISCONNECTING EVERYTHING▒▒"
netswitchparanoid
#netswitchparanoidN
echo "▒▒RECONNECTING INTERFACE 1...▒▒"
interface1
echo "▒▒AWAITING TIMER (137 seconds) TO SWITCH INTERFACE▒▒"
sleep 137
echo " "
echo "▒▒PREPARING TO CONNECT INTERFACE 2, DISCONNECTING EVERYTHING▒▒"
netswitchparanoid
#netswitchparanoidN
echo "▒▒RECONNECTING INTERFACE 2...▒▒"
interface2
echo "▒▒AWAITING TIMER (137 seconds) TO SWITCH INTERFACE▒▒"
sleep 137
#echo " "
#echo "▒▒PREPARING TO CONNECT INTERFACE N, DISCONNECTING EVERYTHING▒▒"
#netswitchparanoidN
#echo "▒▒RECONNECTING INTERFACE N...▒▒"
#interfaceN
#echo "▒▒AWAITING TIMER (137 seconds) TO SWITCH INTERFACE▒▒"
#sleep 137
echo " "
echo " ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
echo " ▒INVOKING SCRIPT AGAIN FOR AN ENDLESS LOOP...▒"
echo " ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
sh '/path/to/THIS/script/NetSwitchParanoid.sh'
