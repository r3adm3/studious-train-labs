# Define the maximum width and height of the picture
$maxWidth = 100
$maxHeight = 30

# Define the character to use for the picture
$character = "❆"
$waves = $maxHeight

$array = @{}
$array = [Object[]]::new($maxHeight)
for ($i = 0; $i -lt $maxHeight; $i++) { $array[$i] = [Object[]]::new($maxWidth) }
for ($i = 0; $i -lt $maxHeight; $i++) {
  for ($j = 0; $j -lt $maxWidth; $j++) { $array[$i][$j] = " " }
}
  

function draw() {
  Clear-Host
  for ($i = 0; $i -lt $array.Count; $i++) {
      for ($j = 0; $j -lt $array[$i].Count; $j++) {
          Write-Host -NoNewline $array[$i][$j]
      }
      echo ""
  }
}

function addLine($addSnow) {
  for ($i = $maxHeight - 1; $i -gt 0; $i--) {
    $array[$i] = $array[$i-1]
  }
  $count = Get-Random -Minimum ($maxWidth/($maxWidth*10)) -Maximum ($maxWidth/10)
  $array[0] = [Object[]]::new($maxWidth)
  for ($i = 0; $i -lt $maxWidth; $i++) { $array[0][$i] = " " }
  if ($addSnow) {
    for ($i = 0; $i -lt $count; $i++) {
      $position = Get-Random -Minimum 0 -Maximum $maxWidth
      while ($array[0][$position] -eq $character) {
        $position = Get-Random -Minimum 0 -Maximum $maxWidth
      }
      $array[0][$position] = $character
    }
  }
}

for ($i = 0; $i -lt ($maxHeight + $waves + 1); $i++) {
  addLine($i -le $waves)
  draw
  Start-Sleep -Milliseconds 50
}
Start-Sleep -Milliseconds 500
