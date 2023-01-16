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

3. Can you extend the network from step 2. assuming the company plans to extend significantly it's website business which will mean hiring about 30 developers and contracting two more external companies.
4. Can you change the IP addresses to use class B private network range?