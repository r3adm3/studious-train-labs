
$colors = "Cyan","Green","Yellow","Red","Magenta","White"
$treeheight = 10

Clear-Host

$treewidth = 1

for($i=1; $i -le $treeheight; $i++)
{
  for ($treewid=1; $treewid -le ($treeheight - $treewidth); $treewid++)
{

Write-Host " " -nonewline
}

for ($treewid=1; $treewid -le ($treewidth*2-1); $treewid++)
{
  If($treewid % 2)
  {
    Write-Host "*" -ForegroundColor Darkgreen -nonewline
  }
  Else
  {
    Write-Host "*" -ForegroundColor ($colors | get-random) -nonewline
  }
}
Write-Host " "
$treewidth++
}