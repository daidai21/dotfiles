# create file or folder config default permission
alias mkdir='mkdir -m 700'
# if exec touch a new file, then config 700 to this file
# TODO


# avoid error `rm -rf`
alias rm=trash
# TODO

# proxy
export http_proxy="https://127.0.0.1:1080"


# jump to git repository root path
alias cd-git-root="cd \"$(git rev-parse --show-toplevel)\""

# fast git push
alias git-acp="git add .; git commit -m \".\"; git push"
