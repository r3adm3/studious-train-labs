# Networking practicals

1. Use ipconfig to read your machine network setup
   1. Find your IP address - IPCONFIG - 10.0.1.19
   2. Find your default gateway address - IPCONFIG - 10.0.1.1
   3. Find your mac address (try `/all`) - IPCONFIG/ALL -  60-45-BD-D1-F4-74
2. Use ping to test your connectivity to google.com - PING www.google.com
3. Ping google with custom ping size. What is the maximum size google will respond to? - PING google.com -f. MAX = 1ms
4. Ping google with custom ping size and set the number of pings to be 100 - PING google.com -n 100
5. Trace your path to google.com - TRACERT google.com
6. For 15 to 32 ping all the addresses in the range of 10.0.1.X
7. Install `psping` and do the ping tasks with `psping` instead
8. Install `nmap` and scan ports of a public server of your choice
9. Install `nslookup` and translate 5 of your favourite URL
