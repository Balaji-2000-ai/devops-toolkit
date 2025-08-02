git init .: Initializes a Git repository in the current directory
git status: Shows the current status of the working directory and staging area
git add filename: Stages the file for commit
git add file1 file2: Stages multiple files 
git add *: Stages all the files in the current directory
git rm --cached filename : Removes the file from staging area but keeps it in the working directory
git add -f * : Forcefully adds all files to the staging area, including those ignored by .gitignorexxxxxxxxxx    
git commit -m "message" .: Commits all staged files with the given commit message
git commit -m "message" filename: Commits the staged changes of the specified file with the given commit message
git commit -m "message" file file: Commits the staged changes of multiple files with the given commit message
git log : Shows detailed commit history with commit ID, author details, date, and commit message
git log --oneline: Shows the commit history in a concise format with only abbreviated commit IDs and messages
git log --pretty=oneline: Displays each commit on a single line with full commit ID and message
git log -2 : Shows the last 2 commits from the commit history
git log --follow --all filename: Shows complete commit history of a specific file, including Commits from all branches & File history across renames
git commit --amend --author "Balaji <balaji@gmail.com>":Changes the author info of the last commit (creates a new commit ID)
git commit --amend -m "New Message" : Updates the last commit message (creates a new commit ID)
git show <commit-id>: Shows details of a specific commit
git show : Shows details of the latest commit
git reset --hard HEAD~1: Deletes the latest commit and all its code changes
git reset --soft HEAD~2 : Deletes latest 2 commits but keeps changes staged for commit
git reflog : Shows recent commit history including deleted commits
git cherry-pick commit_id : Restores a deleted commit with a new commit ID
git config user.name "username" : Sets the Git author's username for commits (local repo)
git config user.email "email@example.com" : Sets the Git author's email for commits (local repo)

