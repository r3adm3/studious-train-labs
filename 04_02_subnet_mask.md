# Subnetting

You work in a company that has:
- Webservers - 21
- Databases for webservers - 11
- Personal laptops
   - Accountants - 135
   - Management - 43
   - Developers - 67
   - External contractors - 6 groups with maximum of 50
- Backend systems - 194
- Backend databases - 34
- File sharing servers - 14

[useful tool](https://www.davidc.net/sites/default/subnets/subnets.html)

Given class C private IP address range:
1. Can you suggest network solution that separates different departments in separate subnetworks?

**_You can have 14 subnetworks (one for each department)_**

2. Can make the subnetworks extra efficient in terms of using as few IP addresses as possible?

* **Webservers - 21** _(30 useable IPs: 192.168.0.33 - 192.168.0.62)_

* **Databases for webservers - 11** _(14 useable IPs: 192.168.0.1 - 192.168.0.14)_

* **Accountants - 135** _(254 useable IPs: 192.168.3.1 - 192.168.3.254)_

* **Management - 43** _(62 useable IPs: 192.168.0.65 - 192.168.0.126)_

* **Developers - 67** _(126 useable IPs: 192.168.2.129 - 192.168.2.254)_

* **External contractors - 6 groups with maximum of 50** _(6 groups of 62 useable IPs)_

* **Backend systems - 194** _(254 useable IPs: 192.168.4.1 - 192.168.4.254)_

* **Backend databases - 34** _(62 useable IPs: 192.168.0.129 - 192.168.0.190)_

* **File sharing servers - 14** _(14 useable IPs: 192.168.0.17 - 192.168.0.30)_

3. Can you extend the network from step 2. assuming the company plans to extend significantly it's website business which will mean hiring about 30 developers and contracting two more external companies

**_The subnet previously created for Developers had 126 useable IPs and only 67 were used so additional 30 developers can be added to it. 2 more subnet addresses can be created for the 2 new external contactor groups._**

4. Can you change the IP addresses to use class B private network range?


Department| Subnet address | Range of addresses | Useable IPs | Hosts
----------|----------------|--------------------|-------------|------
**Backend systems - 194** | 172.16.0.0/24 | 172.16.0.0 - 172.16.0.255 | 172.16.0.1 - 172.16.0.254 | 254
**Accountants - 135** | 172.16.1.0/24 | 172.16.1.0 - 172.16.1.255 | 	172.16.1.1 - 172.16.1.254 | 254 
**Developers - 67** | 172.16.2.0/25 | 	172.16.2.0 - 172.16.2.127 | 172.16.2.1 - 172.16.2.126 | 126 
**External contractors - group 1** | 172.16.2.128/26 | 172.16.2.128 - 172.16.2.191 | 172.16.2.129 - 172.16.2.190 | 62 
**External contractors - group 2** | 172.16.2.192/26 | 172.16.2.192 - 172.16.2.255 | 172.16.2.193 - 172.16.2.254 | 62 
**External contractors - group 3** | 172.16.3.0/26 | 172.16.3.0 - 172.16.3.63 | 172.16.3.1 - 172.16.3.62 | 62 
**External contractors - group 4** | 172.16.3.64/26 | 172.16.3.64 - 172.16.3.127 | 172.16.3.65 - 172.16.3.126 | 62 
**External contractors - group 5** | 172.16.3.128/26 | 172.16.3.128 - 172.16.3.191 | 172.16.3.129 - 172.16.3.190 | 62 
**External contractors - group 6** | 172.16.3.192/26 | 172.16.3.192 - 172.16.3.255 | 172.16.3.193 - 172.16.3.254 | 62 
**External contractors - group 7** | 172.16.4.0/26 | 172.16.4.0 - 172.16.4.63 | 172.16.4.1 - 172.16.4.62 | 62 
**External contractors - group 8** | 172.16.4.64/26 | 172.16.4.64 - 172.16.4.127 | 172.16.4.65 - 172.16.4.126 | 62  
**Management - 43** | 172.16.4.128/26 | 172.16.4.128 - 172.16.4.191 | 172.16.4.129 - 172.16.4.190 | 62 
**Backend databases - 34** | 172.16.4.192/26 | 172.16.4.192 - 172.16.4.255 | 172.16.4.193 - 172.16.4.254 | 62
**Webservers - 21** | 172.16.5.0/27 | 172.16.5.0 - 172.16.5.31 | 172.16.5.1 - 172.16.5.30 | 30  
**File sharing servers - 14** | 172.16.5.32/28 | 172.16.5.32 - 172.16.5.47 | 172.16.5.33 - 172.16.5.46 | 14 
**Databases for webservers - 11** | 172.16.5.48/28 | 172.16.5.48 - 172.16.5.63 | 172.16.5.49 - 172.16.5.62 | 14


