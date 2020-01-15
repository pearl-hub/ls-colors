function post_install(){
    local giturl=https://github.com/trapd00r/LS_COLORS.git

    info "Installing or updating the LS_COLORS git repository..."
    install_or_update_git_repo $giturl "${PEARL_PKGVARDIR}/ls-colors" master
}

function post_update(){
    post_install
}

function pre_remove(){
    rm -rf "${PEARL_PKGVARDIR}/ls-colors"
}
