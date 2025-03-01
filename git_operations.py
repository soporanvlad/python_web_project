import os
import subprocess
import sys
import shlex

def init_git_repo_for_user(username:str):
    print(os.getcwd())
    subprocess.call(shlex.split(f'./tmp/git_init.sh {username}'))

init_git_repo_for_user('git2')
