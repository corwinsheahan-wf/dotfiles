if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi


export GOPATH=~/.go

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

function itermtitle () {
  # The 0 is the mode: 0 - tab and window; 1 - tab; 2 - window
  echo -ne "\033]0;$@\007"
}

function grepp () {
  echo "Grepping for $@"
  grep -R --include="*.py" "$@" * ;
}

function grepa () {
  echo "Grepping for $@"
  grep -R --include="*.as" "$@" * ;
}

function grepj () {
  echo "Grepping for $@"
  grep -R --include="*.coffee" --include="*.js" "$@" * ;
}

