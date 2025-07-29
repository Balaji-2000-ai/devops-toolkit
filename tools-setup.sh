#Git
yum install git -y: Installs Git on the system
git --version or git -v: Checks the installed Git version
git init .: Initializes a Git repository in the current directory
git status: Shows the current status of the working directory and staging area
git add filename: Stages the file for commit
git add file1 file2: Stages multiple files 
git add *: Stages all the files in the current directory
git commit -m "message" .: Commits all staged files with the given commit message
git commit -m "message" filename: Commits the staged changes of the specified file with the given commit message
git commit -m "message" file file: Commits the staged changes of multiple files with the given commit message
git log : Shows detailed commit history with commit ID, author details, date, and commit message
git show <commit-id>: Shows details of a specific commit
git show : Shows details of the latest commit
git config user.name "username" : Sets the Git author's username for commits (local repo)
git config user.email "email@example.com" : Sets the Git author's email for commits (local repo)

