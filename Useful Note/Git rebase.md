# Git rebase


https://andrewroblesdev.medium.com/resolving-merge-conflicts-in-git-88cdf45a1ca5


git pull upstream master
git checkout -b branchname

git status will show you the changes made in your local repo


So you commit your changes and push the changes to your fork. The following lines will add all files to the staging area , commit them and then push your branchname to your fork.

git add --all
git commit -m 'this is where your commit messeage would go'
git push origin branchname

When things go wrong

1/first must fix the local master branch :::

git checkout master
git pull upsteam master

2/Now that master is fixed it time to fix the branchname branch

git checkout branchname 
git rebase origin/master

git rebase origin/V6.18-fix     


After resolve conflict with Xcode or fork :

git add --all
git rebase --continue

the branch is now fixed you need to push the changes to branch name ===> Dans gitlab (submit merge request)

git push -f origin branchname. <==> from fork : push and tab force


============
git remote --v

==========

Supprimer dernier commit :: git reset --hard HEAD~1


￼
￼
￼
