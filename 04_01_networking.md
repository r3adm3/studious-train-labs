#Networking practicals

1. Use ipconfig to read your machine network setup
   1. Find your IP address `ipconfig` via cmd is IP on network and for external IP use www.whatismyip.com
   2. Find your default gateway address `ipconfig/all`
   3. Find your mac address (try `/all`) `ipconfig/all`
2. Use ping to test your connectivity to google.com
   1. `ping google.com`
3. Ping google with custom ping size. What is the maximum size google will respond to?
   1. `ping google.com -l 1472`
4. Ping google with custom ping size and set the number of pings to be 100
   1. `ping google.com -n 8 `
5. Trace your path to google.com
   1. `tracert google.com`
6. For 15 to 32 ping all the addresses in the range of 10.0.1.X
   1. `15..32 | ForEach-Object { Test-Connection “10.0.1.$_” }`
7.  Install `psping` and do the ping tasks with `psping` instead
8.  Install `nmap` and scan ports of a public server of your choice
9.  Install `nslookup` and translate 5 of your favourite URL