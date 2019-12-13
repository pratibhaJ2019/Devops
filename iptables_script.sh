#/bin/bash

/sbin/iptables -F


while read line;

 do
        /sbin/iptables -A INPUT -p tcp -s $line --dport 5000 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT;
        /sbin/iptables -A INPUT -p tcp -s $line --dport 3306 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT;
        /sbin/iptables -A INPUT -p tcp -s $line --dport 6800 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT;
        /sbin/iptables -A INPUT -p tcp -s $line --dport 10000 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT;

done < /opt/ip.txt

 /sbin/iptables -A OUTPUT -p tcp --sport 5000 -m conntrack --ctstate ESTABLISHED -j ACCEPT;
 /sbin/iptables -A INPUT -p tcp --dport 5000 -j REJECT

 /sbin/iptables -A OUTPUT -p tcp --sport 3306 -m conntrack --ctstate ESTABLISHED -j ACCEPT;
 /sbin/iptables -A INPUT -p tcp --dport 3306 -j REJECT

 /sbin/iptables -A OUTPUT -p tcp --sport 6800 -m conntrack --ctstate ESTABLISHED -j ACCEPT;
 /sbin/iptables -A INPUT -p tcp --dport 6800 -j REJECT

 /sbin/iptables -A OUTPUT -p tcp --sport 10000 -m conntrack --ctstate ESTABLISHED -j ACCEPT;
 /sbin/iptables -A INPUT -p tcp --dport 10000 -j REJECT
