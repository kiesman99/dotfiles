function fgs() {
  git add $(git ls-files -m -o --exclude-standard | fzf -m)
} 
