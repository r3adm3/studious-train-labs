Command line excercises
===

1. go to your profile `C:\users\username` 
   1. `cd 'C:\Users\studentadmin\`
2. create a folder called England, cd into the folder
3. use `fsutil file create new` to create a file of 0 bytes named `fsutilfile.txt` 
   1. `fsutil file createnew fsutilfile.txt 0`
4. use `echo` to create a file called `echofile.txt` with one line of text reading `This is my echo file`
5. rename both files to `newechofile.txt` and `newfsutilefile.txt` else
    1. `Rename echofile.txt newechofile.txt`  AND  `Rename fsutilefile.txt newfsutilefile.txt`
6. create a new folder in the England folder called win
7. copy `newechofile.txt` to `win` 
    1. `copy newechofile.txt c:\Users\studentadmin\England\Win`
8. Move `newfsutilfile.txt` to `win`
9. cd into `win` folder
10. cd all the way up to `C:` using `CD ..`
11. cd all the way back to the `win` folder
12. create a new folder called help
13. run the help command and export the output to a text file called `help.txt`  (use '> filename' to export) 
    1. `help > help.txt`
14. go to the `C:\ directory`
15. run a dir command with default output
    1. `dir`
16. run dir with output of system and hidden files only
17. cd to your profile and create a dir called EnglandWinAgain
    1. `cd C:\Users\studentadmin` and `mkdir EnglandWinAgain`
18. go into it
19. run ipconfig to screen
20. run ipconfig and output to a file
21. ping the computer's own IP address
22. ping the default gateway
23. ping google.com
24. trace route to yahoo.co.uk and save the output in file `outputs.txt`
    1. `tracert yahoo.co.uk -n1 > outputs.txt`
25. append an empty line to the end of `outputs.txt`
    1. `echo.>>outputs.txt`
26. ping whatismyip.com 13 times and append the output in file `outputs.txt`, store errors in `err.txt`
    1. `ping whatismyip.com -n 13 >> outputs.txt 2> err.txt`
27. list the files inside EnglandWinAGAIN and redirect the output in `myfiles.txt`
28. search for pattern `ttl` and forward the results to search1.txt (edited)
