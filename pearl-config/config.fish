
source $PEARL_PKGDIR/buava/lib/osx-compat.fish


function ls --description 'alias ls=osx_attempt_command ls --color=auto'
    # Replaces the `osx_attempt_command` to avoid recursive calls when
    # the ls comand is not in GNUBIN directory.
    if [ -x "$GNUBIN/ls" ]
        eval "$GNUBIN/ls" --color=auto $argv
    else
        eval (which ls) --color=auto $argv
    end
end


eval (osx_attempt_command dircolors -b $PEARL_PKGDIR/module/LS_COLORS | sed -e '2d' -e 's/^LS_/set LS_/' -e 's/=/ /' )

# vim: ft=fish
