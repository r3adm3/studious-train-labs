# Networking practicals

1. Use ipconfig to read your machine network setup
   1. Find your IP address
      `ipconfig` 
      IPv4 Address. . . . . . . . . . . : 10.0.1.24
   2. Find your default gateway address
      `ipconfig`
      Default Gateway . . . . . . . . . : 10.0.1.1
   3. Find your mac address (try `/all`)
      `ipconfig /all`
      Physical Address. . . . . . . . . : 60-45-BD-C1-96-13
2. Use ping to test your connectivity to google.com
   `ping google.com`
   Pinging google.com [142.250.187.206] with 32 bytes of data:
   Reply from 142.250.187.206: bytes=32 time=2ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=2ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=1ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=2ms TTL=115

      Ping statistics for 142.250.187.206:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
   Approximate round trip times in milli-seconds:
    Minimum = 1ms, Maximum = 2ms, Average = 1ms
3. Ping google with custom ping size. What is the maximum size google will respond to?
   `ping google.com -n 14`
   Pinging google.com [142.250.187.206] with 32 bytes of data:
   Reply from 142.250.187.206: bytes=32 time=2ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=1ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=2ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=2ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=2ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=2ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=2ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=1ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=2ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=1ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=1ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=3ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=1ms TTL=115
   Reply from 142.250.187.206: bytes=32 time=1ms TTL=115

   Ping statistics for 142.250.187.206:
   Packets: Sent = 14, Received = 14, Lost = 0 (0% loss),
   Approximate round trip times in milli-seconds:
   Minimum = 1ms, Maximum = 3ms, Average = 1ms
4. Ping google with custom ping size and set the number of pings to be 100
   `ping google.com -n 100`
   Pinging google.com [142.250.200.14] with 32 bytes of data:
   Reply from 142.250.200.14: bytes=32 time=2ms TTL=115
   Reply from 142.250.200.14: bytes=32 time=3ms TTL=115
   Reply from 142.250.200.14: bytes=32 time=2ms TTL=115
   Reply from 142.250.200.14: bytes=32 time=3ms TTL=115
   Reply from 142.250.200.14: bytes=32 time=3ms TTL=115
   Reply from 142.250.200.14: bytes=32 time=2ms TTL=115
   Reply from 142.250.200.14: bytes=32 time=3ms TTL=115
   Reply from 142.250.200.14: bytes=32 time=2ms TTL=115
   Reply from 142.250.200.14: bytes=32 time=3ms TTL=115
   Reply from 142.250.200.14: bytes=32 time=3ms TTL=115
   (cont.)

   Ping statistics for 142.250.200.14:
   Packets: Sent = 100, Received = 100, Lost = 0 (0% loss),
   Approximate round trip times in milli-seconds:
   Minimum = 2ms, Maximum = 3ms, Average = 2ms
5. Trace your path to google.com
   `Tracert google.com`
   Tracing route to google.com [142.250.179.238]
   over a maximum of 30 hops:

   1     *        *        *     Request timed out.
   2     *        *        *     Request timed out.
   3     *        *        *     Request timed out.
   4     *        *        *     Request timed out.
   5     *        *        *     Request timed out.
   6     *        *        *     Request timed out.
   7     2 ms     2 ms     4 ms  be-124-0.ibr02.lon22.ntwk.msn.net [104.44.32.12]
   8     *        *        *     Request timed out.
   9     2 ms     1 ms     1 ms  ae25-0.lts-96cbe-1a.ntwk.msn.net [104.44.239.100]
   10     3 ms     2 ms     3 ms  google.lts-96cbe-1a.ntwk.msn.net [198.200.130.129]
   11     2 ms     2 ms     2 ms  209.85.248.229
   12     1 ms     2 ms     1 ms  142.251.54.25
   13     1 ms     1 ms     1 ms  lhr25s31-in-f14.1e100.net [142.250.179.238]

   Trace complete.
6. For 15 to 32 ping all the addresses in the range of 10.0.1.X
   `For ($i=15; $i -le 32; $i++){
   ping -n 1 "10.0.1.$i"
      }`
7. Install `psping` and do the ping tasks with `psping` instead
8. Install `nmap` and scan ports of a public server of your choice
9. Install `nslookup` and translate 5 of your favourite URL
