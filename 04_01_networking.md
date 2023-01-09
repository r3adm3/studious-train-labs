# Networking practicals

1. Use ipconfig to read your machine network setup
   1. Find your IP address 10.0.1.28 
   2. Find your default gateway address 10.0.1.1
   3. Find your mac address (try `/all`) 60-45-BD-D0-45-48
2. Use ping to test your connectivity to google.com 
Ping statistics for 172.217.16.238:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 2ms, Maximum = 30ms, Average = 9ms
3. Ping google with custom ping size. What is the maximum size google will respond to? 65500
4. Ping google with custom ping size and set the number of pings to be 100 Ping statistics for 172.217.16.238:
    Packets: Sent = 100, Received = 99, Lost = 1 (1% loss),
Approximate round trip times in milli-seconds:
    Minimum = 2ms, Maximum = 2ms, Average = 2ms
5. Trace your path to google.com
  1     *        *        *     Request timed out.
  2     *        *        *     Request timed out.
  3     *        *        *     Request timed out.
  4     *        *        *     Request timed out.
  5     *        *        *     Request timed out.
  6     *        *        *     Request timed out.
  7     2 ms     2 ms     2 ms  be-124-0.ibr02.lon22.ntwk.msn.net [104.44.32.12]
  8     1 ms    <1 ms    <1 ms  ae120-0.icr01.lon22.ntwk.msn.net [104.44.21.94]
  9     1 ms     1 ms     1 ms  ae22-0.ier01.lon32.ntwk.msn.net [104.44.238.212]
 10     2 ms     2 ms     2 ms  ae67-0.ier01.lon32.ntwk.msn.net [104.44.14.106]
 11     6 ms     3 ms     3 ms  216.239.48.217
 12     2 ms     2 ms     2 ms  142.251.52.145
 13     2 ms     2 ms     2 ms  lhr48s30-in-f14.1e100.net [142.250.200.46]
6. For 15 to 32 ping all the addresses in the range of 10.0.1.X
C:\Users\studentadmin>FOR /L %i IN (15,1,32) DO ping -a -n 1 192.168.0.%i

C:\Users\studentadmin>ping -a -n 1 192.168.0.15

Pinging 192.168.0.15 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.15:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.16

Pinging 192.168.0.16 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.16:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.17

Pinging 192.168.0.17 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.17:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.18

Pinging 192.168.0.18 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.18:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.19

Pinging 192.168.0.19 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.19:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.20

Pinging 192.168.0.20 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.20:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.21

Pinging 192.168.0.21 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.21:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.22

Pinging 192.168.0.22 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.22:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.23

Pinging 192.168.0.23 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.23:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.24

Pinging 192.168.0.24 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.24:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.25

Pinging 192.168.0.25 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.25:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.26

Pinging 192.168.0.26 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.26:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.27

Pinging 192.168.0.27 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.27:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.28

Pinging 192.168.0.28 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.28:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.29

Pinging 192.168.0.29 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.29:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.30

Pinging 192.168.0.30 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.30:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.31

Pinging 192.168.0.31 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.31:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),

C:\Users\studentadmin>ping -a -n 1 192.168.0.32

Pinging 192.168.0.32 with 32 bytes of data:
Request timed out.

Ping statistics for 192.168.0.32:
    Packets: Sent = 1, Received = 0, Lost = 1 (100% loss),
7. Install `psping` and do the ping tasks with `psping` instead
8. Install `nmap` and scan ports of a public server of your choice
9. Install `nslookup` and translate 5 of your favourite URL
