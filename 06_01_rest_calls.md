# Calling REST API

REST api offers a remote appilcation calls over HTTP/S protocol. It is widely used for the simplicity of usage and options for securing the endpoints (TLS). The endpoint is defined by IP address (or DNS address), the port it uses, the verb and the path. There is a good practice to provide documentation about the endpoint that are available.

There are two options of calling REST endpoint from powershell:
1. **curl** - Universal program for transfering data over network using supported protocols.
2. **Invoke-RestMethod** - Works similarly using standard verb-noun powershell naming convention. Specialised on REST services.

Options 1. and 2. are similar but not identical. For basic use cases they are interchangable.


Some tasks for practicing:
1. Invoke following endpoint and observe the data it returns using both *curl* and *Invoke-RestMethod*. Endpoint: `https://catfact.ninja/fact`
    curl returns the information as what appears to be a string but Invoke-RestMethod returns the information as a PowerShell object.

2. Invoke slightly more complex endpoint `https://www.boredapi.com/api/activity` and access only a single part of the response (for instance `type`)
    Can save Invoke-RestMethod response as a variable such as $response,

    Using $response.type (or $response.activity e.c.t) will give the part of the response we asked for.

3. Create a powershell script and call endpoint `https://catfact.ninja/fact` 10 times. Store the results in an arraylist. Print the arraylist.

$catFactsCURL = @()
for($i=0; $i -le 10; $i++){

$response = curl https://catfact.ninja/fact

$catFactsCURL+=($response)
}

$catFactsCURL

4. Create a powershell script and call endpoint `https://www.boredapi.com/api/activity` 10 times. Transform each response to an object and store each object in arraylist.

$BoredAPI = @()
for($i=0; $i -le 10; $i++){

$response = Invoke-RestMethod https://www.boredapi.com/api/activity

$BoredAPI+=([PSCustomObject]@{ activity = $response.activity; type = $response.type;  participants = $response.participants; price = $response.price; link = $response.link; key = $response.key; accessibility = $response.accessibility})
}

$BoredAPI

