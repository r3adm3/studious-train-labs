# Calling REST API

REST api offers a remote appilcation calls over HTTP/S protocol. It is widely used for the simplicity of usage and options for securing the endpoints (TLS). The endpoint is defined by IP address (or DNS address), the port it uses, the verb and the path. There is a good practice to provide documentation about the endpoint that are available.

There are two options of calling REST endpoint from powershell:
1. **curl** - Universal program for transfering data over network using supported protocols.
2. **Invoke-RestMethod** - Works similarly using standard verb-noun powershell naming convention. Specialised on REST services.

Options 1. and 2. are similar but not identical. For basic use cases they are interchangable.


Some tasks for practicing:
1. Invoke following endpoint and observe the data it returns using both *curl* and *Invoke-RestMethod*. Endpoint: `https://catfact.ninja/fact`

 curl https://catfact.ninja/fact
{"fact":"Cats' hearing is much more sensitive than humans and dogs.","length":58}

Invoke-RestMethod -Uri https://catfact.ninja/fact

fact
----
A cat's smell is their strongest sense, and they rely on this leading sense to identify people and objects; a feline's…

2. Invoke slightly more complex endpoint `https://www.boredapi.com/api/activity` and access only a single part of the response (for instance `type`)

(Invoke-RestMethod -Uri https://www.boredapi.com/api/activity).type


3. Create a powershell script and call endpoint `https://catfact.ninja/fact` 10 times. Store the results in an arraylist. Print the arraylist.

# Create an empty array to store the cat facts
$cat = @()

# Call the endpoint 10 times
for ($i = 0; $i -lt 10; $i++) {
    # Use Invoke-RestMethod to call the endpoint and store the result in a variable
    $catFact = Invoke-RestMethod -Uri https://catfact.ninja/fact

    # Add the cat fact to the array
    $cat += $catFact.fact
}

$cat

4. Create a powershell script and call endpoint `https://www.boredapi.com/api/activity` 10 times. Transform each response to an object and store each object in arraylist.


# Create an array to store the activities
$activities = @()

# Call the endpoint 10 times
for ($i = 0; $i -lt 10; $i++) {
    # Use Invoke-RestMethod to call the endpoint and store the result in a variable
    $activity = Invoke-RestMethod -Uri https://www.boredapi.com/api/activity

    # Convert the result to a PSObject and add the object to the array
    $activities += [PSCustomObject]$activity
}

$activities
