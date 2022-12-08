
$jeffs_files = Get-ChildItem -File -Path $(Get-Location).Path

foreach($file in $jeffs_files){

    Rename-Item -path $file.Name -NewName $file.Name.Replace("testrename","")
    
    
    
    #-NewName $(($file.Name.Replace(" ","-").Replace(",","").Replace("(","-").Replace(")","-")).ToLower())

}