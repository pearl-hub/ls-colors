source $PEARL_PKGDIR/buava/lib/osx-compat.sh

alias ls="osx_attempt_command ls --color=auto"

eval $(osx_attempt_command dircolors -b $PEARL_PKGDIR/module/LS_COLORS)

# vim: ft=sh
