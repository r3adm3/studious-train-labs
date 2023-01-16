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
 AC - add up the numbers - about 850 ip addresses required, or 16 subnets
2. Can make the subnetworks extra efficient in terms of using as few IP addresses as possible?
    Play about with the online calculator
3. Can you extend the network from step 2. assuming the company plans to extend significantly it's website business which will mean hiring about 30 developers and contracting two more external companies.
4. Can you change the IP addresses to use class B private network range?