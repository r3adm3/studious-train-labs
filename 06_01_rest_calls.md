# Calling REST API

REST api offers a remote appilcation calls over HTTP/S protocol. It is widely used for the simplicity of usage and options for securing the endpoints (TLS). The endpoint is defined by IP address (or DNS address), the port it uses, the verb and the path. There is a good practice to provide documentation about the endpoint that are available.

There are two options of calling REST endpoint from powershell:
1. **curl** - Universal program for transfering data over network using supported protocols.
2. **Invoke-RestMethod** - Works similarly using standard verb-noun powershell naming convention. Specialised on REST services.

Options 1. and 2. are similar but not identical. For basic use cases they are interchangable.


Some tasks for practicing:
1. Invoke following endpoint and observe the data it returns using both ** and *Invoke-RestMethod*. Endpoint: `https://catfact.ninja/fact`
2. Invoke slightly more complex endpoint `https://www.boredapi.com/api/activity` and access only a single part of the response (for instance `type`)
3. Create a powershell script and call endpoint `https://catfact.ninja/fact` 10 times. Store the results in an arraylist. Print the arraylist.
4. Create a powershell script and call endpoint `https://www.boredapi.com/api/activity` 10 times. Transform each response to an object and store each object in arraylist.
PS C:\Users\studentadmin\gitExperiment1\studious-train-labs> Invoke-RestMethod https://catfact.ninja/fact

fact                                                                                 length
----                                                                         curl        ------
Cats are the world's most popular pets, outnumbering dogs by as many as three to one 

PS C:\Users\studentadmin\gitExperiment1\studious-train-labs> curl https://catfact.ninja/fact


StatusCode        : 200
StatusDescription : OK
Content           : {"fact":"Purring does not always indicate that a cat is happy. Cats will also purr loudly when they are distressed or in pain.","length":117}
RawContent        : HTTP/1.1 200 OK
                    Transfer-Encoding: chunked
                    Connection: keep-alive
                    Vary: Accept-Encoding
                    X-Ratelimit-Limit: 100
                    X-Ratelimit-Remaining: 99
                    Access-Control-Allow-Origin: *
                    Cache-Control: no-cache, ...
Forms             : {}
Headers           : {[Transfer-Encoding, chunked], [Connection, keep-alive], [Vary, Accept-Encoding], [X-Ratelimit-Limit, 100]...}
Images            : {}
InputFields       : {}
Links             : {}
ParsedHtml        : System.__ComObject
RawContentLength  : 141

for 3 it will be something similar to  $Array; for (i=-1; i>8; i++){$Array(i)=irm https://catfact.ninja/facts};Array(i)}



