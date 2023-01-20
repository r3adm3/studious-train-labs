# Subsequent Changes

This scenario applies when we have commited and pushed previous changes to the remote repository and we are done with them. Now we will want to do some new piece of work.

1. `git status` gives us information about current branch being some branch we are done working on. Check if there are any files changed as well. Ideally you don't want any files being altered at this point.
   1. If there are some changes in the sources and you are interested in version controlling them then sequence of `git add filename`, `git commit -m "message"`, and `git push` should be done to version control those changes remotely.
   2. If there are some changes you don't want to version control there are couple options. If there is a new file the file can be deleted. If there are changes to existing files we want to discard then `git reset --hard` usually helps.
2. Now we want to abandon the branch and go back to main/master (depending on your repository convention). To do so do `git checkout main`. There should not be any blockig issues
3. Do `git pull` to pull the latest state of the branch. It is important to pull the latest changes so your next work is based on up-to-date sources to avoid conflicts.
4. Now that your branch is updated with any recent changes you can prepare a next branch for the following development `git checkout -b new_branch_name`.
5. At this point you can continue to file 02_contribute.md step `4.`