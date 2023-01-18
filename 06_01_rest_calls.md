# Calling REST API

REST api offers a remote appilcation calls over HTTP/S protocol. It is widely used for the simplicity of usage and options for securing the endpoints (TLS). The endpoint is defined by IP address (or DNS address), the port it uses, the verb and the path. There is a good practice to provide documentation about the endpoint that are available.

There are two options of calling REST endpoint from powershell:
1. **curl** - Universal program for transfering data over network using supported protocols.
2. **Invoke-RestMethod** - Works similarly using standard verb-noun powershell naming convention. Specialised on REST services.

Options 1. and 2. are similar but not identical. For basic use cases they are interchangable.


Some tasks for practicing:
1. Invoke following endpoint and observe the data it returns using both *curl* and *Invoke-RestMethod*. Endpoint: `https://catfact.ninja/fact`
- In ancient Egypt, when a family cat died, all family members would shave their eyebrows as a sign  of mourning
- {"fact":"On average, a cat will sleep for 16 hours a day.","length":48}
2. Invoke slightly more complex endpoint `https://www.boredapi.com/api/activity` and access only a single part of the response (for instance `type`)
- activity      : Create a cookbook with your favorite recipes
type          : cooking
participants  : 1
price         : 0
link          :
key           : 1947449
accessibility : 0.05

PS C:\Users\studentadmin\studious-train-labs> invoke-restmethod https://dog.ceo/api/breeds/image/random

status  message
------  -------
success https://images.dog.ceo/breeds/doberman/n02107142_607.jpg

PS C:\Users\studentadmin\studious-train-labs> $dogvariable = invoke-restmethod https://dog.ceo/api/breeds/image/random
PS C:\Users\studentadmin\studious-train-labs> $dogvariable.status
success
PS C:\Users\studentadmin\studious-train-labs> $dogvariable.message
https://images.dog.ceo/breeds/lhasa/n02098413_7910.jpg









3. Create a powershell script and call endpoint `https://catfact.ninja/fact` 10 times. Store the results in an arraylist. Print the arraylist.
4. Create a powershell script and call endpoint `https://www.boredapi.com/api/activity` 10 times. Transform each response to an object and store each object in arraylist.
