# Networking practicals

1. Use ipconfig to read your machine network setup
    1. `ipconfig`
   2. Find your IP address
      1. 10.0.1.30
   3. Find your default gateway address
      1. 10.0.1.1
   4. Find your mac address (try `/all`)
      1.  60-45-BD-D2-31-1E
2. Use ping to test your connectivity to google.com
   1. `ping google.com`
3. Ping google with custom ping size. What is the maximum size google will respond to?
   1. `ping google.com -l 1500`
4. Ping google with custom ping size and set the number of pings to be 100
   1. `ping google.com -l 20 -n 100`
5. Trace your path to google.com
   1. `tracert google.com`
6. For 15 to 32 ping all the addresses in the range of 10.0.1.X
7. Install `psping` and do the ping tasks with `psping` instead
8. Install `nmap` and scan ports of a public server of your choice
9.  Install `nslookup` and translate 5 of your favourite URL