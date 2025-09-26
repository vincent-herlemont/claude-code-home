---
allowed-tools: Bash(git:*)
---
You will squash all commits of the current branch without losing any code using the following steps. To do this, you will need to:

1. Commit all current changes if not already done.
2. Create a backup git branch.
3. Find the common commit between the source/target branch and the current one (see on GitHub if a PR is open to retrieve the source/target branch).
4. Squash all commits of the current branch.
5. Force push the branch.
