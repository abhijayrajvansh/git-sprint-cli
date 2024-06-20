git-sprint-default-values () {
  default_remote=$(git remote)
  default_commit_msg="wagmi: bug fixes & improvements"
  default_push_branch=$(git rev-parse --abbrev-ref HEAD)
}
