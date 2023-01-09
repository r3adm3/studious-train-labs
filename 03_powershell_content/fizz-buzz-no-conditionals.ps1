$u=@(1..105)
for($fb = 14; $fb -lt 105; $fb+=15){ $u[$fb]='FizzBuzz'
    for($b=1; $b -lt 3; $b++){$u[$fb-($b*5)]='Buzz'}
    for($f=1; $f -lt 5; $f++){$u[$fb-($f*3)]='Fizz'}}
$u[0..99]
