source $PEARL_PKGDIR/buava/lib/osx-compat.sh

# Bash ignore aliases on non-interactive shells.
# ZSH always consider aliases.
if [[ $- == *i* ]]
then
    alias ls="osx_attempt_command ls --color=auto"
fi

eval $(osx_attempt_command dircolors -b $PEARL_PKGVARDIR/ls-colors/LS_COLORS)

# vim: ft=sh
