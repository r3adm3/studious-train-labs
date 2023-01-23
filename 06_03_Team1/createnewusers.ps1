get mguser.


New-MgUser -DisplayName $mgUser.DisplayName
-UserPrincipalName '$mgUser.FirstName+$mgUser.SecondName+'.onmicrosoft.com'
-UsageLocation GB