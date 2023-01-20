$namesArray =Import-Csv -Path 06_03_Team1\userlist2.csv

ForEach ($name in $namesArray) {
    $name.name
}
