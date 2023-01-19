#pwsh
function addTwoNumbersFunction{
param(
 #   Write-Output "Started Function"
    $firstFunctionNumber,
    $secondFunctionNumber
)
    return $firstFunctionNumber+$secondFunctionNumber
}

Write-Output "started Script"

#$firstnumber=1
#$SecondNumber=2

$addedNumbers=addTwoNumbersFunction -firstFunctionNumber 1  -secondFunctionNumber 4

Write-Output "Your numbers added together is :  $addedNumbers"
