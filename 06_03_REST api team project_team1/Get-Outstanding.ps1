function Get-Outstanding {
    $outStanding = Get-Random -min 0 -max 50000
    return $outStanding
  }
  Get-Outstanding