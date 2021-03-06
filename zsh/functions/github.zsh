# a few things for working with github

function github_repo_location () {
    git remote -v | ag origin | head -n 1 | sed -e 's/^.*://' | sed -e 's/\..*//'
}

function ghbranch() {
    open "https://github.com/`github_repo_location`/compare/`(current_branch)`"
}

function ghrepo () {
    open "https://github.com/`github_repo_location`"
}

function pull_request_number() {
    git branch --remotes --contains $(last_non_fixup_commit_on_branch) | ag pull | sed -e 's/^.*\///'
}

function ghpull () {
    git fetch origin
    if [[ pull_request_number != "" ]]; then
        open "https://github.com/`github_repo_location`/pull/`pull_request_number`"
    else
        ghbranch
    fi
}
