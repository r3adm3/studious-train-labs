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

   command: ping www.google.com /l [bytes to send]

4. Ping google with custom ping size and set the number of pings to be 100
   
   Command: ping www.google.com /n 100  


5. Trace your path to google.com

   Command: Tracert www.google.com

6. For 15 to 32 ping all the addresses in the range of 10.0.1.X

for($i=15; $i -le 32; $i++){

    $command = "ping 10.0.1." + $i

    write-host $command
 }


7. Install `psping` and do the ping tasks with `psping` instead


   ping google: psping -n 100 -i 0 -q -l 1k 172.217.169.36

   -n parameter gives the number of pings. -l gives the size of pings. 1K gives 1kb

8. Install `nmap` and scan ports of a public server of your choice

   Command for nmap: nmap -T4 -A -v 142.250.179.238 
9.  Install `nslookup` and translate 5 of your favourite URL

   IP: Domain
   151.101.129.140 : www.reddit.com
   151.101.193.69 : www.stackoverflow.com
   140.177.204.192 : www.wolframalpha.com
   172.217.168.206 : www.youtube.com
   178.236.7.220 : www.amazon.co.uk

