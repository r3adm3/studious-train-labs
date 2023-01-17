1. Can you suggest network solution that separates different departments in separate subnetworks?  
   1. 819   by adding all the figures together  21+11+135+43+67+300(remember 6*50)+194+34+14
   2. 1024 because that the nearest to 819

      Subnet address |	Range of addresses |	Useable IPs	Hosts |
      ---------|----------|---------
      192.168.0.0/20	 |  192.168.0.0 - 192.168.15.255 |	192.168.0.1 - 192.168.15.254  | 4094
      192.168.16.0/20 |	192.168.16.0 - 192.168.31.255	| 192.168.16.1 - 192.168.31.254	| 4094	
      192.168.32.0/20 |	192.168.32.0 - 192.168.47.255	| 192.168.32.1 - 192.168.47.254	| 4094			
      192.168.48.0/20 |	192.168.48.0 - 192.168.63.255	| 192.168.48.1 - 192.168.63.254	| 4094		
      192.168.64.0/20 |	192.168.64.0 - 192.168.79.255	| 192.168.64.1 - 192.168.79.254	| 4094				
      192.168.80.0/20 |	192.168.80.0 - 192.168.95.255	| 192.168.80.1 - 192.168.95.254	| 4094		
      192.168.96.0/20  |	192.168.96.0 - 192.168.111.255	| 192.168.96.1 - 192.168.111.254	| 4094			
      192.168.112.0/20 |	192.168.112.0 - 192.168.127.255	| 192.168.112.1 - 192.168.127.254	| 4094		
      192.168.128.0/20 |	192.168.128.0 - 192.168.143.255	| 192.168.128.1 - 192.168.143.254	| 4094					
      192.168.144.0/20 |	192.168.144.0 - 192.168.159.255	| 192.168.144.1 - 192.168.159.254	| 4094		
      192.168.160.0/20 |	192.168.160.0 - 192.168.175.255	| 192.168.160.1 - 192.168.175.254	| 4094			
      192.168.176.0/20 |	192.168.176.0 - 192.168.191.255	| 192.168.176.1 - 192.168.191.254	| 4094		
      192.168.192.0/20 |	192.168.192.0 - 192.168.207.255	| 192.168.192.1 - 192.168.207.254	| 4094				
      192.168.208.0/20 |   192.168.208.0 - 192.168.223.255	| 192.168.208.1 - 192.168.223.254	| 4094		
      192.168.224.0/20 |	192.168.224.0 - 192.168.239.255	| 192.168.224.1 - 192.168.239.254	| 4094			
      192.168.240.0/20 |	192.168.240.0 - 192.168.255.255	| 192.168.240.1 - 192.168.255.254	| 4094



      2. Can make the subnetworks extra efficient in terms of using as few IP addresses as possible?
   
      Subnet address |	Range of addresses |	Useable IPs	Hosts |
      ---------|----------|---------
      192.168.0.0/24 |	192.168.0.0 - 192.168.0.255   | 192.168.0.1 - 192.168.0.254	   | 254										
      192.168.1.0/24	|  192.168.1.0 - 192.168.1.255   |	192.168.1.1 - 192.168.1.254	| 254		
      192.168.2.0/25	|  192.168.2.0 - 192.168.2.127   |	192.168.2.1 - 192.168.2.126	| 126			
      192.168.2.128/26 |	192.168.2.128 - 192.168.2.191 |	192.168.2.129 - 192.168.2.190	| 62			
      192.168.2.192/26 |	192.168.2.192 - 192.168.2.255	| 192.168.2.193 - 192.168.2.254	| 62		
      192.168.3.0/26	  |   192.168.3.0 - 192.168.3.63    |	192.168.3.1 - 192.168.3.62	   | 62				
      192.168.3.64/26  |	192.168.3.64 - 192.168.3.127  |	192.168.3.65 - 192.168.3.126	| 62		
      192.168.3.128/26 |	192.168.3.128 - 192.168.3.191 |	192.168.3.129 - 192.168.3.190	| 62			
      192.168.3.192/26 |	192.168.3.192 - 192.168.3.255 |	192.168.3.193 - 192.168.3.254	| 62		
      192.168.4.0/26	  |   192.168.4.0 - 192.168.4.63	   | 192.168.4.1 - 192.168.4.62	   | 62						
      192.168.4.64/26  |	192.168.4.64 - 192.168.4.127  |	192.168.4.65 - 192.168.4.126	| 62		
      192.168.4.128/27 |	192.168.4.128 - 192.168.4.159 |	192.168.4.129 - 192.168.4.158	| 30				
      192.168.4.160/28 |	192.168.4.160 - 192.168.4.175 |	192.168.4.161 - 192.168.4.174	| 14		
      192.168.4.176/28 |	192.168.4.176 - 192.168.4.191 |	192.168.4.177 - 192.168.4.190	| 14
      
