$elfsname= @("Kevin", "John", "James", "Mary", "Jane")
$elfsholidaystaken = @("34", "24", "31", "26", "28")
$elfsdaysmissed = @("5", "4", "3", "0", "0")
$elfsdaysowed = 0
$elfshoursowed = 0
$elfsweowedays = 0
	
	For ($i=0; $i -le $elfsname.count; $i++)
	{
	
		$elfsweowedays = (28 - $elfsholidaystaken[$i])
		$elfsdaysowed = ($elfsholidaystaken[$i] - $elfsdaysmissed[$i])
		$elfshoursowed = ($elfsdaysowed * 2)


		if($elfsholidaystaken[$i] -lt 28 -And $elfsdaysmissed[$i] -eq 0)
		{
			Write-Host $elfsname[$i] "dont owe anything. We owe you" $elfsweowedays "Days"
		}

		if($elfsholidaystaken[$i] -lt 28 -And $elfsdaysmissed[$i] -eq 4)
		{
			Write-Host $elfsname[$i] "dont owe anything. Enjoy"
		}

		if($elfsholidaystaken[$i] -gt 28 -And $elfsdaysmissed[$i] -gt 0)
		{
			Write-Host $elfsname[$i] "You owe us" $elfshoursowed "Hours"
		}

		if($elfsholidaystaken[$i] -ge 28 -And $elfsdaysmissed[$i] -eq 0)
		{
			Write-Host $elfsname[$i] "dont owe anything. Enjoy"
		}
	}