$gifts = @("dog", "socks", "coal","playstation", "Hamster")

$gift = Get-Random -InputObject $gifts

$wrapped_gift = ""

$wrapped_gift = "**" + $gift + "**"

$wrappingpaper = "*" * ($wrapped_gift.Length)

Write-Output $wrappingpaper
Write-Output $wrapped_gift
Write-Output $wrappingpaper
