#!/bin/bash

function _configure_git_template_dir {
  git config --global init.templatedir '~/.git-templates'
  mkdir -p ~/.git-templates/hooks
}

function _install_jira_prepare_commit_msg {
  wget https://gist.githubusercontent.com/GabrielCzar/e1dc9773830701015699fbc574b7e46c/raw/589167cbf1b6e005993ebfffbc7357e8b6ca182b/prepare-commit-msg -P ~/.git-templates/hooks
  chmod +x ~/.git-templates/hooks/prepare-commit-msg
}

function _run {
  _configure_git_template_dir
  _install_jira_prepare_commit_msg
}

_run $*