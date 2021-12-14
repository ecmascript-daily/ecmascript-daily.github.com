#!/usr/bin/env bash

commitMessage=$1
currentDir=$(cd $(dirname $0) && pwd)

declare isClean=$(git status --porcelain)
if [ -z "${isClean}" ]; then
  # Working directory clean
  git pull
  git push
else
  # Uncommitted changes
  git stash
  git pull
  git stash pop
  if [ -n "${commitMessage}" ]; then
    git add .
    git commit -m "${commitMessage}" --no-verify
    git push
  fi
fi

if [[ -z $(git status --porcelain) ]];then
  type /opt/homebrew/bin/terminal-notifier >/dev/null 2>&1 && /opt/homebrew/bin/terminal-notifier -message "Sync!!" -title "es-daily"
  exit 0;
else
  type /opt/homebrew/bin/terminal-notifier >/dev/null 2>&1 && /opt/homebrew/bin/terminal-notifier -message "Error!!" -title "es-daily"
  exit 1;
fi