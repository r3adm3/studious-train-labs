function addtwonumbersfunction{
    param (
        $nooffootballteams,
        $noofmanagers
    )

    return $nooffootballteams + $managers
    
}

Write-Output "Football Managers in total"

$nooffootballteams = 20
$noofmanagers = 20

$addednumbers = addtwonumbersfunction -nooffootballteams 20 -noofmanagers 20

Write-Output "Total Football Teams and Managers are $addednumbers"