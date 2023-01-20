# REST api team project

You are making a backend system for internet banking. Your team is preparing services for user to request a personal loan.

- The architect requires you to create set of 4 services (one of them is optional) that evaluate persons suitability.
   - The first service gets called from the online banking. The service is supposed to return the amount of money the bank would lend to the person. The request contains: name and surname of the requester.
   - The second service provides the amount of money the requester already owns to financial institutions (randomly generated in the range of £0 - 50000)
   - The third service provides the length (in months) of how long the requester has been repaying the loans without any problem (randomly generated number in the range of 0 - 120)
   - The fourth service (optional) provides an information about the criminal history of the requester. For simplcity the scale of criminal conviction impact is a number on a scale 0-100. It is randomly generated with 70% chance of 0.
- Consider a following workflow: 
   - The imaginary internet banking server queries the first service one to find out how much money can it lend to a client. (curl or invoke the request manually).
   - The first service then asks the second, third, and fourth service for their inputs on the particular client.
   - The first service then applies following calculation: `amount = months * 1000 - already_borrowed`. If you implement the fourth service as well add a condition: only approve a loan if crime score is under 30.

Potential extensions:
- When you search for a specific client each service stores te particular client and repeated request for the details of the particular client then return the previous results - not newly generated random one.
- For each unique user search for a random dog picture and assign that picture's url to the particular user.
- Add another endpoint that would return all the data known about a particular client. Including the client's soul dog.