# GIT ALIAS
alias gcl='git clone'
alias ga='git add'
alias gall='git add .'
alias g='git'
alias get='git'
alias gst='git status'
alias gs='git status'
alias gss='git status -s'
alias gl='git pull'
alias gpr='git pull --rebase'
alias gpp='git pull && git push'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gpo='git push origin'
alias gd='git diff'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gci='git commit --interactive'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gexport='git archive --format zip --output'
alias gdel='git branch -D'
alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gg="git log --graph --pretty=format:'%Cred%h%Creset %Cblue[%cn]%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias ggs="gg --stat"
alias ggp="gg -p"
alias gsl="git shortlog -sn"
alias gw="git whatchanged"


#GIT PROMPT

# git branch dans le prompt
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function parse_git_status {
  noupdated=`git status --porcelain 2> /dev/null | grep -E "^ (M|D)" | wc -l`
  nocommitted=`git status --porcelain 2> /dev/null | grep -E "^(M|A|D|R|C)" | wc -l`
  nostash=`git stash list 2> /dev/null | wc -l`

  if [[ $noupdated -gt 0 ]]; then echo -n "*"; fi
  if [[ $nocommitted -gt 0 ]]; then echo -n "+"; fi
  if [[ $nostash -gt 0 ]]; then echo -n " s($nostash)";fi
}

RED="\[\033[01;31m\]"
YELLOW="\[\033[01;33m\]"
GREEN="\[\033[01;32m\]"
BLUE="\[\033[01;34m\]"
NC="\[\033[0m\]"

case $TERM in
    xterm*)
        TITLEBAR='\[\e]0;\u@\h: \w\a\]';
        ;;
    *)
        TITLEBAR="";
        ;;
esac

PS1="${TITLEBAR}$RED\$(date +%H:%M) $GREEN\u@\h $BLUE\w$YELLOW\$(parse_git_branch)\$(parse_git_status) $BLUE\$ $NC"
