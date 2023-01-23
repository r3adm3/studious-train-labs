

function LoanAmount {
    param([string]$firstName, [string]$lastName)

    #Second service, how much is already owed. Function called AlreadyBorrowed()
    $outstandingBalance =  3500 #Invoke-RestMethod 

    #Third service, how long the loan has been getting repaid.
    $repaymentLength = 45

    #Optional.
    $riskScore = 30
    
    #Calculat the loan amount based on the return values of the 
    $loanAmount = ($repaymentLength * 1000) - $outstandingBalance

    #Check if the customer is able to have a loan. This is based on the risk score being less than 30
    if($riskScore -lt 30){

    #Create a PS Custom object with the positive reply reply
    $returnObject = [PSCustomObject]@{ outstandingBalance = $outstandingBalance; `
                                        repaymentLength = $repaymentLength;`
                                        loanAmount = $loanAmount }

                                    }
    else{
        #return an ineligibility message if client is not eligible for a loan
        $returnObject = "Client is ineligible for a loan"
    }

    #return the applicable response
    return $returnObject
}



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

        # Endpoint definition.
        # Check correct function is called (LoanAmount) with required parameters (forename and surname)
        if ( ($requestvars[3] -eq "LoanAmount") -and ($requestvars[4] -ne $null)  -and ($requestvars[5] -ne $null) ) {
           
            # Define your answer
            $result = LoanAmount -firstName $requestvars[4] -lastName $requestvars[5]

            # Convert the returned data to JSON and set the HTTP content type to JSON
            $message = $result | ConvertTo-Json; 
            $response.ContentType = 'application/json';

       } else {
            #Tell user to pass in first name and last name
            $message = "This is not the page you're looking for. To request a loan amount, please add to the URL /LoanAmount/forename/surname, where forename and surname are the names of the client" | ConvertTo-Json;
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

