# Calling REST API

REST api offers a remote appilcation calls over HTTP/S protocol. It is widely used for the simplicity of usage and options for securing the endpoints (TLS). The endpoint is defined by IP address (or DNS address), the port it uses, the verb and the path. There is a good practice to provide documentation about the endpoint that are available.

There are two options of calling REST endpoint from powershell:
1. **curl** - Universal program for transfering data over network using supported protocols.
2. **Invoke-RestMethod** - Works similarly using standard verb-noun powershell naming convention. Specialised on REST services.

Options 1. and 2. are similar but not identical. For basic use cases they are interchangable.


Some tasks for practicing:
1. Invoke following endpoint and observe the data it returns using both *curl* and *Invoke-RestMethod*. Endpoint: `https://catfact.ninja/fact`


**curl shows:** 

_{"fact":"A cat has two vocal chords, and can make over 100 sounds.","length":57}_
 
**Invoke-RestMethod  https://catfact.ninja/fact shows below info:**

fact | length | 
---------|----------|
 Cats are now Britain's favourite pet: there are 7.7 million cats as opposed to 6.6 million dogs.      | 96 | 


2. Invoke slightly more complex endpoint `https://www.boredapi.com/api/activity` and access only a single part of the response (for instance `type`)

3. Create a powershell script and call endpoint `https://catfact.ninja/fact` 10 times. Store the results in an arraylist. Print the arraylist.

```
#set variable
$page = Invoke-RestMethod https://www.boredapi.com/api/activity

#if we invoke url using $page is shows below details:
```

* **activity:** Volunteer at a local animal shelter
* **type:** _charity_
* **participants:** _1_
* **price:** _0.1_
* **link:** 
* **key:** _1382389_
* **accessibility:** _0.5_

```
#then using $page.type you get:
charity
```


4. Create a powershell script and call endpoint `https://www.boredapi.com/api/activity` 10 times. Transform each response to an object and store each object in arraylist.
