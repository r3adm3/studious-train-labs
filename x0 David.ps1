function numberAddingFunction {
    param (
        $functionNumber1,
        $functionNumber2  
          )
        
        Return $functionNumber1 + $functionNumber2
}

Write-Output "Started Script"

[int]$firstNumber = Read-Host "Please enter the first number"
[int]$secondNumber = Read-Host "Please enter the second number"

$combinedNumbers = numberAddingFunction -functionNumber1 $firstNumber -functionNumber2 $secondNumber

Write-Output "The combined total of both numbers is $combinedNumbers"