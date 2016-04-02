eval (dircolors -b $PEARL_PKGDIR/module/LS_COLORS | sed -e '2d' -e 's/^LS_/set LS_/' -e 's/=/ /' )

# vim: ft=fish
