
$day = 0
$lyric = 0
$intro = "day of Christmas`n My true love sent to me"
$xmaslyrics = @("", "A partridge in a pear tree", " Two turtle-doves", " Three French hens", " Four calling birds", " Five golden rings", " Six geese a laying", " Seven swans a swimming", " Eight maids a milking", " Nine ladies dancing", " Ten lords a-leaping", " I sent 11 pipers piping", " 12 drummers drumming") 

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
    	}

		if($lyric = 3) 
		{ 
			$day = "third" 
			Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric].Trim())
			Write-Host $xmaslyrics[$lyric-1]
			Write-Host " And" $xmaslyrics[$lyric-2]`n
    	}

		if($lyric = 4) 
		{ 
			$day = "fourth" 
			Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric].Trim())
			Write-Host $xmaslyrics[$lyric-1]
			Write-Host $xmaslyrics[$lyric-2]
			Write-Host " And" $xmaslyrics[$lyric-3]`n
    	}

		if($lyric = 5) 
		{ 
			$day = "fifth" 
			Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric].Trim())
			Write-Host $xmaslyrics[$lyric-1]
			Write-Host $xmaslyrics[$lyric-2]
			Write-Host $xmaslyrics[$lyric-3]
			Write-Host " And" $xmaslyrics[$lyric-4]`n
    		}

		if($lyric = 6) 
		{ 
			$day = "sixth" 
			Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric].Trim()) 
			Write-Host $xmaslyrics[$lyric-1]
			Write-Host $xmaslyrics[$lyric-2]
			Write-Host $xmaslyrics[$lyric-3]
			Write-Host $xmaslyrics[$lyric-4]
			Write-Host " And" $xmaslyrics[$lyric-5]`n
    		}

		if($lyric = 7) 
		{ 
			$day = "seventh" 
			Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric].Trim())
			Write-Host $xmaslyrics[$lyric-1]
			Write-Host $xmaslyrics[$lyric-2]
			Write-Host $xmaslyrics[$lyric-3]
			Write-Host $xmaslyrics[$lyric-4]
			Write-Host $xmaslyrics[$lyric-5]
			Write-Host " And" $xmaslyrics[$lyric-6]`n
    		}

		if($lyric = 8) 
		{ 
			$day = "eighth" 
			Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric].Trim())
			Write-Host $xmaslyrics[$lyric-1]
			Write-Host $xmaslyrics[$lyric-2]
			Write-Host $xmaslyrics[$lyric-3]
			Write-Host $xmaslyrics[$lyric-4]
			Write-Host $xmaslyrics[$lyric-5]
			Write-Host $xmaslyrics[$lyric-6]
			Write-Host " And" $xmaslyrics[$lyric-7]`n
    		}

		if($lyric = 9) 
		{ 
			$day = "ninth " 
			Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric].Trim())
			Write-Host $xmaslyrics[$lyric-1]
			Write-Host $xmaslyrics[$lyric-2]
			Write-Host $xmaslyrics[$lyric-3]
			Write-Host $xmaslyrics[$lyric-4]
			Write-Host $xmaslyrics[$lyric-5]
			Write-Host $xmaslyrics[$lyric-6]
			Write-Host $xmaslyrics[$lyric-7]
			Write-Host " And" $xmaslyrics[$lyric-8]`n
    		}

		if($lyric = 10) 
		{ 
			$day = "tenth " 
			Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric].Trim())
			Write-Host $xmaslyrics[$lyric-1]
			Write-Host $xmaslyrics[$lyric-2]
			Write-Host $xmaslyrics[$lyric-3]
			Write-Host $xmaslyrics[$lyric-4]
			Write-Host $xmaslyrics[$lyric-5]
			Write-Host $xmaslyrics[$lyric-6]
			Write-Host $xmaslyrics[$lyric-7]
			Write-Host $xmaslyrics[$lyric-8]
			Write-Host " And" $xmaslyrics[$lyric-9]`n
    		}

		if($lyric = 11) 
		{ 
			$day = "eleventh " 
			Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric].Trim())
			Write-Host $xmaslyrics[$lyric-1]
			Write-Host $xmaslyrics[$lyric-2]
			Write-Host $xmaslyrics[$lyric-3]
			Write-Host $xmaslyrics[$lyric-4]
			Write-Host $xmaslyrics[$lyric-5]
			Write-Host $xmaslyrics[$lyric-6]
			Write-Host $xmaslyrics[$lyric-7]
			Write-Host $xmaslyrics[$lyric-8]
			Write-Host $xmaslyrics[$lyric-9]
			Write-Host " And" $xmaslyrics[$lyric-10]`n
    		}

		if($lyric = 12) 
		{ 
			$day = "twelveth " 
			Write-Host " On the" $day $intro`n ($xmaslyrics[$lyric].Trim())
			Write-Host $xmaslyrics[$lyric-1]
			Write-Host $xmaslyrics[$lyric-2]
			Write-Host $xmaslyrics[$lyric-3]
			Write-Host $xmaslyrics[$lyric-4]
			Write-Host $xmaslyrics[$lyric-5]
			Write-Host $xmaslyrics[$lyric-6]
			Write-Host $xmaslyrics[$lyric-7]
			Write-Host $xmaslyrics[$lyric-8]
			Write-Host $xmaslyrics[$lyric-9]
			Write-Host $xmaslyrics[$lyric-10]
			Write-Host " And" $xmaslyrics[$lyric-11]`n
    		}

	}