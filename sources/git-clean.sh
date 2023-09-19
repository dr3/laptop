# This is the command I use to checkout/update a branch
#
# Usage: `clean my_branch` or `clean my_fork:my_branch`
# 
# Note: This deletes branches a LOT, so requries you to basically 
#       never keep anything local-only. Use at your own risk!
# 
clean() {
  default=$(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')
  git add . && git stash && git fetch && git checkout $default && git pull origin $default;
  if [ $# -eq 0 ]; then
    echo "No arguments supplied"
  else
    first=$(echo $1 | cut -d ":" -f 1);
    second=$(echo $1 | cut -d ":" -f 2);

    if [ "$first" == "$second" ]; then
        echo "Checking out branch $1"
        git branch -D $1; git checkout -b $1 origin/$1;
    else
      echo "Checking out fork branch $1"
      gitthing=$(git rev-parse --show-toplevel)
      repo=$(basename "$gitthing");
      git remote add $first git@github.com:$first/$repo.git;
      git fetch $first;
      git branch -D $second;
      git checkout -b $second $first/$second;
    fi
  fi
  clear;
}
