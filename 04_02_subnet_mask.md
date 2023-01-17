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
-  Subnet	       IP Range	                  Mask
   192.10.0.0/24	 192.0.0.1 - 192.09.255.254	255.255.255.10
2. Can make the subnetworks extra efficient in terms of using as few IP addresses as possible?
-  Yes to 819
3. Can you extend the network from step 2. assuming the company plans to extend significantly it's website business which will mean hiring about 30 developers and contracting two more external companies.
4. Can you change the IP addresses to use class B private network range?
 - Subnet address | Range of addresses | Useable IPs | Hosts
---------|----------|---------|---------
 172.16.0.0/24	|	172.16.0.0 - 172.16.0.255 |	172.16.0.1 - 172.16.0.254 | 254
 172.16.1.0/24 | 172.16.1.0 - 172.16.1.255 | 172.16.1.1 - 172.16.1.254 | 254
 172.16.2.0/25	|	172.16.2.0 - 172.16.2.127 |	172.16.2.1 - 172.16.2.126 |126			
 172.16.2.128/26	|	172.16.2.128 - 172.16.2.191 |	172.16.2.129 - 172.16.2.190 |	62			
 172.16.2.192/26 | 172.16.2.192 - 172.16.2.255 |	172.16.2.193 - 172.16.2.254	| 62		
 172.16.3.0/26	|	172.16.3.0 - 172.16.3.63	| 172.16.3.1 - 172.16.3.62 |	62				
 172.16.3.64/26	| 172.16.3.64 - 172.16.3.127	 | 172.16.3.65 - 172.16.3.126	 |62		
 172.16.3.128/26	| 172.16.3.128 - 172.16.3.191 |	172.16.3.129 - 172.16.3.190 |	62			
 172.16.3.192/26	|	172.16.3.192 - 172.16.3.255 |	172.16.3.193 - 172.16.3.254 |	62	
 172.16.4.0/26	|	172.16.4.0 - 172.16.4.63 |	172.16.4.1 - 172.16.4.62 |	62						
 172.16.4.64/26	 |	172.16.4.64 - 172.16.4.127 |	172.16.4.65 - 172.16.4.126	 | 62		
 172.16.4.128/27	|	172.16.4.128 - 172.16.4.159 |	172.16.4.129 - 172.16.4.158 |	30				
 172.16.4.160/28	|	172.16.4.160 - 172.16.4.175 |	172.16.4.161 - 172.16.4.174 |	14			
 172.16.4.176/28	|	172.16.4.176 - 172.16.4.191 |	172.16.4.177 - 172.16.4.190 |	14	
 172.16.4.192/26	|	172.16.4.192 - 172.16.4.255	| 172.16.4.193 - 172.16.4.254	 | 62	
 172.16.5.0/26	| 172.16.5.0 - 172.16.5.63	| 172.16.5.1 - 172.16.5.62	 | 62