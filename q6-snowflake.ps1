$snowflakefall = Get-Random -Maximum 100
$snowflakeposition = Get-Random -Maximum 2
$snowflakearea = 100

    $snowflake = 1
    for ($snowflake=0; $snowflake -le 0; $snowflake++) 
        { #did snowflake fall

            for ($snowflakefall=0; $snowflakefall -le 0; $snowflakefall++) 
                {
                    if (($snowflakefall -ge 20) && ($snowflakeposition -eq 1))
                        {
                                Write-Output "snowflake fell and it fell to the left" 
                                
                        } elseif   (($snowflakefall -ge 20) && ($snowflakeposition -eq 2)) {
                                Write-Host "snowflake fell and it fell to the right" # Display if snowflake right 50% (0.5)
                        }
                    else 
                    {
                        ($snowflakefall -lt 20) 
                        Write-Host "no snowflake"
                    }    
                }
        } 





#Write-Host    "snow position:" $snowflakeposition            
#Write-Host    "no:" $snowflakefall
