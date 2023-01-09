# Networking practicals

1. Use ipconfig to read your machine network setup
   1. Find your IP address
      1.1 ipconfig then IPv Address 192.168.1.210
   2. Find your default gateway address
      2.1 Default gateway address is ipconfig then Default gateway fe80::1a58:80ff:fe61:e670%5
   3. Find your mac address (try `/all`)
      3.1 ipconfig /all 3C-21-9C-0A-22-9B
   4. Use ping to test your connectivity to google.com
      4.1 ping www.google.com ALL PACKETS SENT AND ALL RECEIVED. NONE LOST. VARIOUS RESPONSES DEPENDING ON WINDOWS OR MAC. ip 2a00:1450:4009:818::2004

5. Ping google with custom ping size. What is the maximum size google will respond to?
      5.1 ping www.google.com -n
6. Ping google with custom ping size and set the number of pings to be 100
      6.1 ping www.google.com -100
7. Trace your path to google.com
       7.1 tracert 2a00:1450:4009:818::2004

8. For 15 to 32 ping all the addresses in the range of 10.0.1.X
9. Install `psping` and do the ping tasks with `psping` instead
10. Install `nmap` and scan ports of a public server of your choice
11. Install `nslookup` and translate 5 of your favourite URL
