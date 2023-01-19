
function addteonumbersfunction{

    write-output "started function"

    return 10000000
}

$firstnumber = 1

$secondnumber = 2

$addednumbers = addtwonumbersfunction

write-output "your numbers added together is: $addednumbers"
