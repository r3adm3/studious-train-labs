# Create a listener on port 8080
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add('http://+:8080/') 
$listener.Start()
'Listening ...'
$continue = $true

while ($continue) {
    $context = $listener.GetContext() 
    $request = $context.Request
    $response = $context.Response
   
    # Break from loop if GET request sent to /end
    if ($request.Url -match '/end$') { 
        break 
    } else {

        # Split request URL to get command and options
        $requestvars = ([String]$request.Url).split("/");        

        # Endpoint definition
        if ($requestvars[3] -eq "amount") {
            $owed = curl http://10.0.1.29:8080/owed
            $intowed = [int]$owed
            $months = curl http://10.0.1.30:8080/months
            $intmonths = [int]$months
            $amount = $intmonths * 1000 - $intowed
           
            # Define your answer
            $result = "The amount that you can borrow is £" + $amount + $requestvars[4]

            # Convert the returned data to JSON and set the HTTP content type to JSON
            $message = $result | ConvertTo-Json; 
            $response.ContentType = 'application/json';

       } else {
            $message = "This is not the page you're looking for." | ConvertTo-Json;
            $response.ContentType = 'application/json' ;
       }

       # Convert the data to UTF8 bytes
       [byte[]]$buffer = [System.Text.Encoding]::UTF8.GetBytes($message)

       # Write response out and close
       $response.ContentLength64 = $buffer.length
       $output = $response.OutputStream
       $output.Write($buffer, 0, $buffer.length)
       $output.Close()
   }    
}
 
#Terminate the listener
$listener.Stop()