function Wrap-Gift($presents) {
  foreach ($present in $presents) {
    for ($i = 0 ; $i -le ($present.length) + 5 ; $i++) {
      Write-Host -NoNewline '*'
    }
    Write-Output "`r"
    Write-Output "** $present **"
    for ($i = 0 ; $i -le ($present.length) + 5 ; $i++) {
      Write-Host -NoNewline '*'
    }
    Write-Output "`n"
  }
}
$presents = "car", "ring", "computer", "phone"
Wrap-Gift($presents)


#region - using functions I could seperate this up and have 3 seperate functions as follows

# function Wrap-Middle($present) {
#   Write-Output "** $present **"
# }

# function Wrap-Side($present) {
#   for ($i = 0 ; $i -le ($present.length) + 5 ; $i++) {
#     Write-Host -NoNewline '*'
#   }
#   Write-Output "`r"
# }

# function Wrap-Gift($presents) {
#   foreach ($present in $presents) {
#     Wrap-Side($present)
#     Wrap-Middle($present)
#     Wrap-Side($present)
#     Write-Output "`n"
#   }
# }

# $presents = "car", "ring", "computer", "phone"
# Wrap-Gift($presents)

#endregion