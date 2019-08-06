# Elegant command prompt
export PS1="\W $ "

# Default editor. Alternatively, use `VISUAL`
export EDITOR=vim

# l->ls with some human touches - see `man ls` for details
# todo Reorder Galhp options for better mnemonic :)
alias l='ls -Galhp'

# A pleasant greeting from any new terminal windows :)
figlet -f ~/.figlet/slant.flf "Good day."