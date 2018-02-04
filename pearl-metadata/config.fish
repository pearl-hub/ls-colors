source $PEARL_PKGDIR/buava/lib/osx-compat.fish

eval (osx_attempt_command dircolors -b $PEARL_PKGDIR/module/LS_COLORS | sed -e '2d' -e 's/^LS_/set LS_/' -e 's/=/ /' )

# vim: ft=fish
