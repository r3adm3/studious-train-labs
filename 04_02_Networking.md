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

* With a /23 subnet mask, you would have 512 IP addresses per subnet, which would be enough to accommodate the number of devices in each department. This would give you the following subnets:

Webservers - 192.168.0.0/23 (512 host addresses)
Databases for webservers - 192.168.2.0/23 (512 host addresses)
Personal laptops - 192.168.4.0/23 (512 host addresses)
Accountants - 192.168.6.0/23 (512 host addresses)
Management - 192.168.8.0/23 (512 host addresses)
Developers - 192.168.10.0/23 (512 host addresses)
External contractors - 192.168.12.0/23 (512 host addresses)
Backend systems - 192.168.14.0/23 (512 host addresses)
Backend databases - 192.168.16.0/23 (512 host addresses)
File sharing servers - 192.168.18.0/23 (512 host addresses)

* By doing this, we can keep each department separated and secure while still allowing them to communicate with each other if necessary. It also make the IP addresses usage more efficient.

2. Can make the subnetworks extra efficient in terms of using as few IP addresses as possible?

* Yes, subnetting can be used to make efficient use of IP addresses. By dividing a larger network into smaller subnetworks, the number of unused IP addresses in each subnet can be reduced. Additionally, using variable-length subnet masks (VLSMs) can further increase the efficiency of IP address usage in a network.

3. Can you extend the network from step 2. assuming the company plans to extend significantly it's website business which will mean hiring about 30 developers and contricting two more external companies.

* As the company plans to expand its website business by hiring 30 more developers and contracting with two more external companies, the network needs to be extended to accommodate the additional IP addresses needed for the new devices. To do this, the subnet mask size can be increased to ensure that each subnet has enough IP addresses available.

* For example, if the company was using a /24 subnet mask and the subnet was running out of IP addresses, the subnet mask can be increased to /22 to provide more IP addresses for the subnet.

* It's important to note that the subnet mask size should be chosen according to the number of devices

4. Can you change the IP addresses to use class B private network range?

* 128.1.0.0 | 128.1.1.0 | 128.1.2.0

