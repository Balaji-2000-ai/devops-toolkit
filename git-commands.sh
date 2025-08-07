git init .: Initializes a Git repository in the current directory
git status: Shows the current status of the working directory and staging area
git add filename: Stages the file for commit
git add file1 file2: Stages multiple files 
git add *: Stages all the files in the current directory
git rm --cached filename : Removes the file from staging area but keeps it in the working directory
git add -f * : Forcefully adds all files to the staging area, including those ignored by .gitignore  
git commit -m "message" .: Commits all staged files with the given commit message
git commit -m "message" filename: Commits the staged changes of the specified file with the given commit message
git commit -m "message" file file: Commits the staged changes of multiple files with the given commit message
git log : Shows detailed commit history with commit ID, author details, date, and commit message
git log --oneline: Shows the commit history in a concise format with only abbreviated commit IDs and messages
git log --pretty=oneline: Displays each commit on a single line with full commit ID and message
git log -2 : Shows the latest 2 commits from the commit history
git log --follow --all filename: Shows complete commit history of a specific file, including Commits from all branches & File history across renames
git commit --amend --author "Balaji <balaji@gmail.com>":Changes the author info of the last commit (creates a new commit ID)
git commit --amend -m "New Message" : Updates the last commit message (creates a new commit ID)
git show <commit-id>: Shows details of a specific commit
git show commit_id --name-only: Displays the commit message and the list of files changed in the specified commit.
git show : Shows details of the latest commit
git reset --hard HEAD~1: Deletes the latest commit and all its code changes
git reset --soft HEAD~2 : Deletes latest 2 commits but keeps changes staged for commit
git reflog : Shows recent commit history including deleted commits
git cherry-pick commit_id : Restores a deleted commit with a new commit ID
git config user.name "username" : Sets the Git author's username for commits (local repo)
git config user.email "email@example.com" : Sets the Git author's email for commits (local repo)
git commit --amend --no-edit:Updates the previous commit without changing its commit message (to add staged files to the last commit)



git branch: Lists all local branches in the current Git repository(Branches are shown only after the first commit)
git branch branchname: Creates a new branch with the given name
git checkout branchname: Switches to the specified branch
git checkout -b branchname: Creates a new branch with the given name and switches to it
git checkout -d branchname: Deletes a local branch safely (only if it is fully merged)
git branch -D branchname: Force deletes a branch, even if it is not merged
git branch -m old_branch new_branch: Renames a local Git branch from old_branch to new_branch
git branch -m newname : Renames the current branch to newname
git merge branchname :  Combines changes from the specified branch into the current branch with a merge commit
git cherry-pick commit_id : Applies the changes from the specified commit to the current branch without merging the entire branch history
git restore file: Discards uncommitted changes in the file and restores it back to the last committed state
git restore filename: Recovers deleted staged file
git revert commit_id : Creates a new commit that deletes actions from the specified commit without altering commit history




