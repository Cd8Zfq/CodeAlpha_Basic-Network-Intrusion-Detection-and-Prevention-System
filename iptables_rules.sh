# if suricata runs as gateway
sudo iptables -I FORWARD -j NFQUEUE

# rules for host layer only
sudo iptables -I OUTPUT -j NFQUEUE
sudo iptables -I INPUT -j NFQUEUE
sudo iptables -I INPUT -p tcp --dport 22 -j ACCEPT #to let inbound ssh traffic pass
sudo iptables -I OUTPUT -p tcp --sport 22 -j ACCEPT #to let outbound ssh traffic pass
