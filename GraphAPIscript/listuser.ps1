Connect-MgGraph

$users = Get-MgUser

foreach ($user in $users) {
    Write-Output $user.displayName
}