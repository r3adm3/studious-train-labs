 #ipconfig /all
 #Get-NetAdapter

 #ping google.com

 #Test-Connection google.com -BufferSize 500

 #Test-Connection google.com -BufferSize 50 #-Count 100

 #tracert google.com
 
 for ($i = 15; $i -le 32; $i++) {
    Test-Connection "10.0.1.$i" -Count 1
}