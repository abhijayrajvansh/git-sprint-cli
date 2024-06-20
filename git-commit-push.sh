git_commit_push () {
  RED='\033[0;31m'
  GREEN='\033[0;32m'
  RESET='\033[0m'

  default_remote=$(git remote)
  default_commit_msg="wagmi: bug fixes & improvements"
  default_push_branch=$(git rev-parse --abbrev-ref HEAD)

  echo -n "Enter Commit (def- $default_commit_msg): "
  read commit_msg

  echo -n "Enter Branch (def- $default_remote/$default_push_branch): "
  read push_branch

  if [ -z "$commit_msg" ]; then
    commit_msg="$default_commit_msg"
  fi

  if [ -z "$push_branch" ]; then
    push_branch="$default_push_branch"
  fi

  echo ""
  echo -e "Using git commit message: ${GREEN}$commit_msg${RESET}"
  echo "Using git push branch: ${RED}$push_branch${RESET}"
  echo ""

  git add .
  git status
  git commit -m "$commit_msg"
  git push $default_remote $push_branch
}