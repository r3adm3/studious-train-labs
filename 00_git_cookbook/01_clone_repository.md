# Cloning a git repository

Using HTTPS (not SSH)
1. On Github or Azure DevOps find the url for cloning.
   1. GitHub: in the repo find button `Code`, click it and find the url displayed in the small window.
   2. Azure DevOps: in the repository, section `Files` click the button `clone` and you'll find the URL displayed in subwindow on the right side.
2. On your machine go to a directory you use for the code you work on. use change directory command `cd`. Before doing `cd` you can display the directories in your current location using `dir` on Windows or `ls` on linux based OS. For instance `YOUR_HOME/work/`: `cd work`.
3. Run command `git clone URL` where the URL is what you copied in the step 2.
4. After the clone you'll be able to see a new directory with the repository name at your current location (`dir` or `ls`).
5. Go into the directory representing the repository `cd repo_name`.
6. You are now able to execute the git commands on your repository. For instance `git status` should display the status of your repository.