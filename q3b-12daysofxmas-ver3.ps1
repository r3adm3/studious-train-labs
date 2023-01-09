$day = 0
$lyric = 0
$intro = "day of Christmas`n My true love sent to me"
$xmaslyrics = @(" A partridge in a pear tree", " Two turtle-doves", " Three French hens", 
" Four calling birds", " Five golden rings", " Six geese a laying", " Seven swans a swimming", " Eight maids a milking", 
" Nine ladies dancing", " Ten lords a-leaping", " I sent 11 pipers piping", " 12 drummers drumming") 
   
    for ($lyric=0; $lyric -le 0; $lyric++)
        {
            if($lyric = 1) 
                {
                    $day = "first" 
                    Write-Host " On the" $day $intro`n ($xmaslyrics[0].Trim())`n
                }
            
            if($lyric = 2) 
                {
                    $day = "second" 
                    Write-Host " On the" $day $intro 
                    $xmaslyrics[1..0]`
                }
            
            if($lyric = 3) 
                {
                    $day = "third" 
                    Write-Host `n "On the" $day $intro 
                    $xmaslyrics[2..0]`
                }

            if($lyric = 4) 
                {
                    $day = "fourth" 
                    Write-Host `n "On the" $day $intro 
                    $xmaslyrics[3..0]`
                }
                
            if($lyric = 5) 
                {
                    $day = "fifth" 
                    Write-Host `n "On the" $day $intro 
                    $xmaslyrics[4..0]`
                }
            
            if($lyric = 6) 
                {
                    $day = "sixth" 
                    Write-Host `n "On the" $day $intro 
                    $xmaslyrics[5..0]`
                }

            if($lyric = 7) 
                {
                    $day = "seventh" 
                    Write-Host `n "On the" $day $intro 
                    $xmaslyrics[6..0]`
                }
                
            if($lyric = 8) 
                {
                    $day = "eighth" 
                    Write-Host `n "On the" $day $intro 
                    $xmaslyrics[7..0]`
                }
            
            if($lyric = 9)
                {
                    $day = "nineth" 
                    Write-Host `n "On the" $day $intro 
                    $xmaslyrics[8..0]`
                }

            if($lyric = 10) 
                {
                    $day = "tenth" 
                    Write-Host `n "On the" $day $intro 
                    $xmaslyrics[9..0]`
                }
            
            if($lyric = 11)
                {
                    $day = "eleventh" 
                    Write-Host `n "On the" $day $intro 
                    $xmaslyrics[10..0]`
                }

            if($lyric = 12)
                {
                    $day = "twelveth" 
                    Write-Host `n "On the" $day $intro 
                    $xmaslyrics[11..0]`
                }
        }     

