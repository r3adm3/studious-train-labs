$gifts = @("dog", "socks", "perfumes")
ForEach ($gift in $gifts)
{
	if($gift.length -eq 3)
	{
		Write-Host " ***** "
		Write-Host " *$gift*"	
		Write-Host " ***** "
	}


	if($gift.length -eq 5)
	{
		Write-Host " ******* "
		Write-Host " *$gift*"	
		Write-Host " ******* "
	}


	if($gift.length -eq 8)
	{
		Write-Host " ********** "
		Write-Host " *$gift*"	
		Write-Host " ********** "
	}
}