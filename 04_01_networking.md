# Networking practicals

1. Use ipconfig to read your machine network setup
   1. Find your IP address
   10.0.1.25
   2. Find your default gateway address
   10.0.1.1
   3. Find your mac address (try `/all`)
   60-45-BD-C1-F4-D9

2. Use ping to test your connectivity to google.com
   Ping statistics for 142.250.200.36:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
   Approximate round trip times in milli-seconds:
    Minimum = 2ms, Maximum = 3ms, Average = 2ms

3. Ping google with custom ping size. What is the maximum size google will respond to?
   somewhere between $2^{10}$ and $2^{11}$ bytes.

   command would be ping www.google.com /l [bytes to send]

4. Ping google with custom ping size and set the number of pings to be 100
5. Trace your path to google.com
6. For 15 to 32 ping all the addresses in the range of 10.0.1.X
7. Install `psping` and do the ping tasks with `psping` instead
8. Install `nmap` and scan ports of a public server of your choice
9. Install `nslookup` and translate 5 of your favourite URL
