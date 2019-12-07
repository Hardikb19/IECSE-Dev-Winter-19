# IECSE-AppDev-Winter-19
Repository for IECSE Dev Winter Project 2019, contains the resources and solutions to the tasks given during the project.

# Instructions
 - Create a new branch with your name using the command `git checkout -b <branch-name>`, with branch name in format
 	`<first-name>"-"<last-name>`. eg.- `git checkout -b Hardikb19`.
 
 - All commits should be made to your own branch, **Never commit to master**. To prevent this always check what branch you're
   on before committing any changes, command to check current branch `git branch`, command to checkout(change to) a branch,
   `git checkout <branch-name>`.
 
 - To pull solutions after they are uploaded to master, change branch to master and do a git pull.  
 	`git checkout master`  
 	`git pull origin master`
 
 - Steps to submit your code.
 	* Add files to be committed using the command `git add .` (the "." after add means all files in the current directory will be added)
 	* Add a descriptive commit message for the same. Command- `git commit -m "<msg>"`.  
    Format - `Task #<task-no.> : description`. Mention any errors or issues in the code in the commit message, if any.
 	
  * Finally, push your code. command - `git push origin <branch-name>`
  

 ```shell
 git checkout -b Hardikb19
 git checkout Hardikb19	// to make sure you are in your own branch
 git add .	// adds all files and subfolders to be committed in the current directory
 git commit -m "Task #0: description"
 git push origin Hardikb19
 ```

 - All solutions will be uploaded to master.
 
 - All tasks will be posted on the [wiki](https://github.com/Hardikb19/IECSE-Dev-Winter-19/wiki).
 
 # Task 1
 
 Build your own Events Page using Assets, Widgets like Row, Column, Text and Container.
 You can use the assets provided to you in the repository, feel free to explore your creativity, we do not require an exact copy of the Events Page example we provide.

![Events Page](https://i.imgur.com/5fRdY8R.png)
