export GREP_OPTIONS='--color=always'
export GREP_COLORS='ms=01;37:mc=01;37:sl=:cx=01;30:fn=35:ln=32:bn=32:se=36'
export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export LESS='-R'
export GOPATH='/Users/enyo/Library/go'
export PS1="\u:\w\$(git branch 2>/dev/null | grep --color=never -e '\* ' | sed 's/^..\(.*\)/ (\[\033[0;32m\]\1\[\033[0m\])/') $ "
export PATH="/usr/local/opt/postgresql@11/bin:$PATH"
export GRP="TC"

alias ls="ls -1"
alias l="ls -alrtTGh"
alias file="file -b"
alias eject="diskutil unmountDisk /dev/disk1s1"

eval "$(rbenv init -)"

alias start_pgsql="pg_ctl -D /usr/local/var/postgres -l /tmp/postgresql.log start ; tail -f /tmp/postgresql.log"
alias stop_pgsql="pg_ctl -D /usr/local/var/postgres -l /tmp/postgresql.log stop"
# After PostgreSQL Upgrade: rm -rf /usr/local/var/postgres ; initdb /usr/local/var/postgres -E utf8"
alias sql="psql -U enyo postgres"

alias setdate="~/.setdate ."
alias fixdate="~/.fixdate ."
alias fixdir="ls | xargs -I '{}' ~/.fixdir '{}'"
alias encode320="ls | grep --color=never '\.aiff' | sort | xargs -I '{}' lame -b 320 -ms '{}'"
alias catm3u="ls | xargs -I '{}' ~/.catm3u '{}'"
alias catsfv="ls | xargs -I '{}' ~/.catsfv '{}'"
alias catnfo="ls | xargs -I '{}' ~/.catnfo '{}'"
alias catcue="ls | xargs -I '{}' ~/.catcue '{}'"
alias cleardsstore="find . -name '*.DS_Store' -type f -delete"
alias clearurls="find . -name '*.url' -type f -delete"
alias cleartxts="find . -name '*.txt' -type f -delete"
alias clearinfos="find . -name '*[${GRP}]*COMPLETE*[${GRP}]*' -type f -delete"
alias setinfos="ls | xargs -I '{}' ~/.shared_check '{}'"
alias fixdirsilent="ls | xargs -I '{}' ~/.fixdir-silent '{}'"
