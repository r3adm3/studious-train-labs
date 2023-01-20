$namesArray =Import-Csv -Path 06_03_Team1\userlist2.csv

$count = $namesArray.Count

For ($name = 0; $name -lt $count; $name++ ) {
    $findName = $namesArray[$name].name
    $located = Get-MgUser -filter "DisplayName eq '$findName'"
    if ($located) {
        write-host "User $findName already exits"
    }else {
        # replace below with function for creating user and createuserfunction can call passwordfuction
        write-host "User $findName needs profile created"
    }
} 

  
