# Networking practicals

1. Use ipconfig to read your machine network setup
   1. Find your IP address

   IPAddress         : fe80::6d0f:5232:35e6:b052%14
   
   2. Find your default gateway address

   IPv4DefaultGateway   : 10.0.1.1

3. Use ping to test your connectivity to google.com

PS C:\Users\studentadmin\labs\studious-train-labs> ping google.com

Pinging google.com [142.250.187.206] with 32 bytes of data:
Reply from 142.250.187.206: bytes=32 time=2ms TTL=115
Reply from 142.250.187.206: bytes=32 time=1ms TTL=115
Reply from 142.250.187.206: bytes=32 time=2ms TTL=115
Reply from 142.250.187.206: bytes=32 time=2ms TTL=115

Ping statistics for 142.250.187.206:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 1ms, Maximum = 2ms, Average = 1ms

4. Ping google with custom ping size. What is the maximum size google will respond to?

PS C:\Users\studentadmin\labs\studious-train-labs> ping google.com -f -l 100

Pinging google.com [172.217.169.46] with 100 bytes of data:
Reply from 172.217.169.46: bytes=68 (sent 100) time=2ms TTL=115
Reply from 172.217.169.46: bytes=68 (sent 100) time=2ms TTL=115
Reply from 172.217.169.46: bytes=68 (sent 100) time=2ms TTL=115
Reply from 172.217.169.46: bytes=68 (sent 100) time=3ms TTL=115

Ping statistics for 172.217.169.46:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 2ms, Maximum = 3ms, Average = 2ms

4. Ping google with custom ping size and set the number of pings to be 100

5. Trace your path to google.com

PS C:\Users\studentadmin\labs\studious-train-labs> tracert google.com

Tracing route to google.com [142.250.178.14]
over a maximum of 30 hops:

  1     *        *        *     Request timed out.
  2     *        *        *     Request timed out.
  3     *        *        *     Request timed out.
  4     *        *        *     Request timed out.
  5     *        *        *     Request timed out.
  6     *        *        *     Request timed out.
  7     2 ms     1 ms     2 ms  ae22-0.ier01.lon32.ntwk.msn.net [104.44.238.212]
  8     2 ms     3 ms     3 ms  ae67-0.ier01.lon32.ntwk.msn.net [104.44.14.106]
  9     *        5 ms     4 ms  216.239.48.217
 10     2 ms     2 ms     3 ms  142.250.215.127
 11     2 ms     2 ms     2 ms  lhr48s27-in-f14.1e100.net [142.250.178.14]


6. For 15 to 32 ping all the addresses in the range of 10.0.1.X


7. Install `psping` and do the ping tasks with `psping` instead
8. Install `nmap` and scan ports of a public server of your choice
9. Install `nslookup` and translate 5 of your favourite URL
