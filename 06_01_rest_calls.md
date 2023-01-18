# Calling REST API

REST api offers a remote appilcation calls over HTTP/S protocol. It is widely used for the simplicity of usage and options for securing the endpoints (TLS). The endpoint is defined by IP address (or DNS address), the port it uses, the verb and the path. There is a good practice to provide documentation about the endpoint that are available.

There are two options of calling REST endpoint from powershell:
1. **curl** - Universal program for transfering data over network using supported protocols.
2. **Invoke-RestMethod** - Works similarly using standard verb-noun powershell naming convention. Specialised on REST services.

Options 1. and 2. are similar but not identical. For basic use cases they are interchangable.


Some tasks for practicing:
1. Invoke following endpoint and observe the data it returns using both *curl* and *Invoke-RestMethod*. Endpoint: `https://catfact.ninja/fact`
{"fact":"There are more than 500 million domestic cats in the world, with approximately 40 recognized breeds.","length":100}

fact                                                          length
----                                                          ------
Florence Nightingale owned more than 60 cats in her lifetime.     61
2. Invoke slightly more complex endpoint `https://www.boredapi.com/api/activity` and access only a single part of the response (for instance `type`)
"type":"social",
type          : education
3. Create a powershell script and call endpoint `https://catfact.ninja/fact` 10 times. Store the results in an arraylist. Print the arraylist.
4. Create a powershell script and call endpoint `https://www.boredapi.com/api/activity` 10 times. Transform each response to an object and store each object in arraylist.
