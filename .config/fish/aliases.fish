# Navigation

function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# Utilities
function grep     ; command grep --color=auto $argv ; end
function g ; git $argv ; end

# mv, rm, cp
alias mv 'command gmv --interactive --verbose'
alias rm 'command grm --interactive --verbose'
alias cp 'command gcp --interactive --verbose'

alias chmox='chmod +x'

# typos and abbreviations
abbr g git
abbr gi git
abbr gti git
abbr v vim
abbr rm rip # use rip (https://github.com/nivekuil/rip) instead of rm
            # (experimental)

alias ll 'exa --long --header --git -a'
alias llt 'exa --long --header --git --sort=newest --reverse'
alias cat='bat'
alias ss='hub sync'

alias vim='~/.local/bin/lvim'
alias hosts='sudo $EDITOR /etc/hosts'


## DEV
alias msk 'mvn clean install -Dmaven.test.skip=true'
alias j8 'sdk use java 1.8.0_251'
alias j12 'sdk use java 12.0.2.hs-adpt'
alias j14 'sdk use java 14.0.2.hs-adpt'

## MISC

alias b="git branch | fzf | xargs git checkout"

## Kube
alias k="kubectl"
