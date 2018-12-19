import os
from github.PullRequest import PullRequest

branch = os.environ.get("BRANCH_NAME")

print(branch)