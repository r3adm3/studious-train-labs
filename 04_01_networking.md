# Networking practicals

1. Use ipconfig to read your machine network setup
   1. Find your IP address
      // 10.0.1.29
   2. Find your default gateway address
      // 10.0.1.1
   3. Find your mac address (try `/all`)
      // getmac
      // 60-45-BD-13-25-A7
2. Use ping to test your connectivity to google.com
      // ping google.com
3. Ping google with custom ping size. What is the maximum size google will respond to?
      // ping google.com -l 10
      // max size is 68 bytes
4. Ping google with custom ping size and set the number of pings to be 100
      // ping google.com -l 68 -n 100
      // ping -n 100 google.com
      // Ping statistics for 142.250.179.238:
      // Packets: Sent = 100, Received = 100, Lost = 0 (0% loss),
      // Approximate round trip times in milli-seconds:
      // Minimum = 1ms, Maximum = 34ms, Average = 1ms
5. Trace your path to google.com
      // tracert google.com
6. For 15 to 32 ping all the addresses in the range of 10.0.1.X
      //
7. Install `psping` and do the ping tasks with `psping` instead
      // psping google.com
      // psping -l 32 -n 100 google.com
      // Ping statistics for 142.250.180.14:
      // Sent = 100, Received = 100, Lost = 0 (0% loss),
      // Minimum = 1.52ms, Maximum = 4.82ms, Average = 1.94ms
8. Install `nmap` and scan ports of a public server of your choice
      // nmap 142.250.179.238
      // Starting Nmap 7.93 ( https://nmap.org ) at 2023-01-09 17:14 Coordinated Universal Time
      // Nmap scan report for lhr25s31-in-f14.1e100.net (142.250.179.238)
      // Host is up (0.0020s latency).
      // Not shown: 998 filtered tcp ports (no-response)
      // PORT    STATE SERVICE
      // 80/tcp  open  http
      // 443/tcp open  https
      // Nmap done: 1 IP address (1 host up) scanned in 4.88 seconds
9. Install `nslookup` and translate 5 of your favourite URL
      // nslookup youtube.com
      // Non-authoritative answer:
      // Name:    youtube.com
      // Addresses:  2a00:1450:4009:81f::200e
          142.250.200.46

      // nslookup shop.mango.com
      // Non-authoritative answer:
      // Name:    e189.a.akamaiedge.net
      // Address:  23.212.232.9
      // Aliases:  shop.mango.com
          shop.mango.com.edgekey.net

      // nslookup crunchyroll.com
      // Non-authoritative answer:
      // Name:    crunchyroll.com
      // Addresses:  104.18.40.133
          172.64.147.123

      // nslookup github.com
      // Non-authoritative answer:
      // Name:    github.com
      // Address:  140.82.121.4

      // nslookup learn.microsoft.com
      // Non-authoritative answer:
      // Name:    e13636.dscb.akamaiedge.net
      // Addresses:  2a02:26f0:fd00:10ae::3544
          2a02:26f0:fd00:109f::3544
          95.101.247.59
      // Aliases:  learn.microsoft.com
          learn-public.trafficmanager.net
          learn.microsoft.com.edgekey.net
          learn.microsoft.com.edgekey.net.globalredir.akadns.net