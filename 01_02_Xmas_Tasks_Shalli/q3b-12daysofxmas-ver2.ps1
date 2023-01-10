$previous = 0
$current = 0
$prev = $previous.Split(',')
$day = 0
$lyric = 0
$intro = "day of Christmas`n My true love sent to me"
$xmaslyrics = @("", "A partridge in a pear tree", " Two turtle-doves", " Three French hens", 
" Four calling birds", " Five golden rings", " Six geese a laying") 

	For ($lyric=0; $lyric -le 0; $lyric++)
	{
		if($lyric = 1) 
		{ 
			$day = "first" 
			Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric])`n
		}
        
		if($lyric = 2) 
		{ 
			$day = "second" 
			Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric].Trim())
			Write-Host " And" $xmaslyrics[$lyric-1]`n

            $previous = $xmaslyrics[$lyric-1]
            $current = $xmaslyrics[$lyric]
    	}

		if($lyric = 3) 
        { 
		 	$day = "third" 
		 	Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric].Trim())
		 	Write-Host $current`n "And" $xmaslyrics[1]`n

		 	$previous = $xmaslyrics[$lyric-1] 
		 	$current = $xmaslyrics[$lyric]
    	}

		if($lyric = 4) 
        { 
		 	$day = "fourth" 
		 	Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric].Trim())
		 	Write-Host $current`n ($previous.Trim())`n "And" $xmaslyrics[1]`n

		 	$previous = ($xmaslyrics[$lyric-1],  $xmaslyrics[$lyric-2]) 
			$current = $xmaslyrics[$lyric]

    	}

		if($lyric = 5) 
        { 
		 	$day = "fifth"
		 	Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric].Trim())
		 	Write-Host $current`n ($prev[0].Trim())`n ($prev[1].Trim())`n "And" $xmaslyrics[1]`n

			 $previous = ($xmaslyrics[$lyric-2],  $xmaslyrics[$lyric-3], $xmaslyrics[$lyric-4]) 
			 $current = $xmaslyrics[$lyric] 
    	}

		if($lyric = 6) 
		{ 
			$day = "sixth"
			Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric].Trim())
			Write-Host "c:"$current`n "p"($prev[0].Trim())`n "p"($prev[1].Trim())`n ($prev[2].Trim())`n "And" $xmaslyrics[1]`n    	}

			$previous = ($xmaslyrics[$lyric-3],  $xmaslyrics[$lyric-4]) 
			$current = $xmaslyrics[$lyric]

    }  