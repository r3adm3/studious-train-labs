# Networking practicals

1. Use ipconfig to read your machine network setup
   1. Find your IP address
   `10.0.1.15`  Ipconfig
   2. Find your default gateway address
   10.0.1.1 Ipconfig
   3. Find your mac address (try `/all`)
   60-45-BD -CF-EF-60  Getmac
2. Use ping to test your connectivity to google.com
Ping Google.com
3. Ping google with custom ping size. What is the maximum size google will respond to?
Ping google.com -1 10
4. Ping google with custom ping size and set the number of pings to be 100
ping google.com -1 74 -n100
5. Trace your path to google.com
Tracert google.com
6. For 15 to 32 ping all the addresses in the range of 10.0.1.X

7. Install `psping` and do the ping tasks with `psping` instead
psping google.com
8. Install `nmap` and scan ports of a public server of your choice
9. Install `nslookup` and translate 5 of your favourite URL
