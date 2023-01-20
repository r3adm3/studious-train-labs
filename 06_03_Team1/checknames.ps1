$namesArray =Import-Csv -Path 06_03_Team1\userlist2.csv

$count = $namesArray.Count

For ($name = 0; $name -lt $count; $name++ ) {
    get-mguser -Filter "DisplayName eq '$name'"
}
  





