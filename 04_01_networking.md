# Networking practicals

1. Use ipconfig to read your machine network setup
   1. Find your IP address
      1.1 ipconfig then IPv Address 10.0.1.23
   2. Find your default gateway address
      2.1 Default gateway address is ipconfig then Default gateway 10.0.1.1
   3. Find your mac address (try `/all`)
      3.1 ipconfig /all 00-22-48-3E-DA-80
   4. Use ping to test your connectivity to google.com
      4.1 ping www.google.com 
      Ping statistics for 142.250.187.228:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 1ms, Maximum = 2ms, Average = 1ms

2. Ping google with custom ping size. What is the maximum size google will respond to????
      5.1 ping www.google.com -n
      Ping size was 32 bytes
3. Ping google with custom ping size and set the number of pings to be 100
      6.1 ping www.google.com -100
      Ping statistics for 142.250.187.196:
      Packets: Sent = 100, Received = 100, Lost = 0 (0% loss),
      Approximate round trip times in milli-seconds:
      Minimum = 1ms, Maximum = 3ms, Average = 1ms
4. Trace your path to google.com
       7.1 Tracing route to lhr25s33-in-f4.1e100.net [142.250.187.196]
over a maximum of 30 hops:

  1     *        *        *     Request timed out.
  2     *        *        *     Request timed out.
  3     *        *        *     Request timed out.
  4     *        *        *     Request timed out.
  5     *        *        *     Request timed out.
  6     *        *        *     Request timed out.
  7    38 ms     2 ms     2 ms  be-102-0.ibr01.lon24.ntwk.msn.net [104.44.21.109]
  8    16 ms     2 ms     2 ms  ae100-0.icr01.lon24.ntwk.msn.net [104.44.21.106]
  9     4 ms     1 ms     1 ms  ae21-0.ier01.lon32.ntwk.msn.net [104.44.238.216]
 10     2 ms     2 ms     2 ms  ae67-0.ier01.lon32.ntwk.msn.net [104.44.14.106]
 11     3 ms     3 ms     3 ms  209.85.249.149
 12     2 ms     2 ms     2 ms  142.251.54.35
 13     2 ms     1 ms     2 ms  lhr25s33-in-f4.1e100.net [142.250.187.196]

Trace complete.

5. For 15 to 32 ping all the addresses in the range of 10.0.1.X
      5.1 Pinging 10.0.1 between 15 to 32
             $ip = "10.0.1"
>> for ($i = 15; $i -le 32; $i++) {
>>     ping -n 1 "$IP.$i"
>> }
6. Install `psping` and do the ping tasks with `psping` instead
7.  Install `nmap` and scan ports of a public server of your choice
8.  Install `nslookup` and translate 5 of your favourite URL
