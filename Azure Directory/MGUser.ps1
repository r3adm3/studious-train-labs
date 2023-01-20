$PasswordProfile = @{
    Password = 'Password1234'
    }


    New-MgUser -DisplayName 'Abdul Ghani' `
    -PasswordProfile $PasswordProfile `
    -AccountEnabled `
    -MailNickname 'AbdulG' `
    -UserPrincipalName 'AbdulGhani@blanknessplc.onmicrosoft.com' `
    -UsageLocation GB