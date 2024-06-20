git-commit () {
  RED='\033[0;31m'
  GREEN='\033[0;32m'
  RESET='\033[0m'

  default_remote=$(git remote)
  default_commit_msg="wagmi: bug fixes & improvements"
  default_push_branch=$(git rev-parse --abbrev-ref HEAD)

  echo -n "Enter Commit (def- $default_commit_msg): "
  read commit_msg

  if [ -z "$commit_msg" ]; then
    commit_msg="$default_commit_msg"
  fi

  git add .
  git status
  git commit -m "$commit_msg"
}