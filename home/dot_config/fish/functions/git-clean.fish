function git-clean --description "Clean up git repository"
  git fetch --prune
  git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -D
end
