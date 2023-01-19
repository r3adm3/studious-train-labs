$PasswordProfile = @{
  Password = 'xWwvJ]6NMw+bWH-d'
  }
New-MgUser -DisplayName 'AllanClark' `
-PasswordProfile $PasswordProfile `
-AccountEnabled -MailNickName 'Clarky1876' `
-UserPrincipalName 'AllanClark@blanknessplc.onmicrosoft.com'`
-UsageLocation GB