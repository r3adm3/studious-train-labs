function PasswordGenerator {
    param ($StringLength=12)

    -Join ((48..57) + (65..90) + (97..122) | Get-Random -Count $StringLength | ForEach-Object {[char]$_})
}

PasswordGenerator