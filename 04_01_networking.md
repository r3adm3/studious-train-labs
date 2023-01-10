# Networking practicals

1. Use ipconfig to read your machine network setup
   1. Find your IP address
   2. Find your default gateway address
   3. Find your mac address (try `/all`)
2. Use ping to test your connectivity to google.com
3. Ping google with custom ping size. What is the maximum size google will respond to?
4. Ping google with custom ping size and set the number of pings to be 100
5. Trace your path to google.com
6. For 15 to 32 ping all the addresses in the range of 10.0.1.X
7. Install `psping` and do the ping tasks with `psping` instead
8. Install `nmap` and scan ports of a public server of your choice
9. Install `nslookup` and translate 5 of your favourite URL


1.  
Windows IP Configuration


Ethernet adapter Ethernet:

   Connection-specific DNS Suffix  . : 1oczowaktzqujfqnc3jli5j4qf.zx.internal.cloudapp.net
   Link-local IPv6 Address . . . . . : fe80::226e:310d:7d8a:722d%4
   IPv4 Address. . . . . . . . . . . : 10.0.1.21
   Subnet Mask . . . . . . . . . . . : 255.255.255.0
   Default Gateway . . . . . . . . . : 10.0.1.1
PS C:\Users\studentadmin>

i.  IPv4 Address. . . . . . . . . . . : 10.0.1.21
ii.  Default Gateway . . . . . . . . . : 10.0.1.1
iii. Physical Address. . . . . . . . . : 60-45-BD-D1-E0-F5

2.Pinging google.com [142.250.178.14] with 32 bytes of data:
Reply from 142.250.178.14: bytes=32 time=3ms TTL=115
Reply from 142.250.178.14: bytes=32 time=2ms TTL=115
Reply from 142.250.178.14: bytes=32 time=2ms TTL=115
Reply from 142.250.178.14: bytes=32 time=2ms TTL=115

Ping statistics for 142.250.178.14:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 2ms, Maximum = 3ms, Average = 2ms

3.PS C:\Users\studentadmin> ping google.com -l 128

Pinging google.com [172.217.169.46] with 128 bytes of data:
Reply from 172.217.169.46: bytes=68 (sent 128) time=2ms TTL=115
Reply from 172.217.169.46: bytes=68 (sent 128) time=2ms TTL=115
Reply from 172.217.169.46: bytes=68 (sent 128) time=2ms TTL=115
Reply from 172.217.169.46: bytes=68 (sent 128) time=2ms TTL=115

max=1472 bytes

5.Tracing route to google.com [172.217.169.46]
over a maximum of 30 hops:

  1     *        *        *     Request timed out.
  2     *        *        *     Request timed out.
  3     *        *        *     Request timed out.
  4     *        *        *     Request timed out.
  5     *        *        *     Request timed out.
  6     *        *        *     Request timed out.
  7     1 ms     1 ms     1 ms  ae21-0.ier01.lon32.ntwk.msn.net [104.44.238.216]
  8     2 ms     3 ms     2 ms  ae67-0.ier01.lon32.ntwk.msn.net [104.44.14.106]
  9     *        *        *     Request timed out.
 10     4 ms     3 ms     3 ms  172.253.66.89
 11     2 ms     3 ms     2 ms  lhr48s08-in-f14.1e100.net [172.217.169.46]

Tr