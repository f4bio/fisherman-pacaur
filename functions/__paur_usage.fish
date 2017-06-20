function __paur_usage
    # set -l uline (set_color -u)
    # set -l nc (set_color normal)

    echo "Usage: paur <ACTION> [<PACKAGES>]"
    echo
    echo "where ACTION can be one of:"
    echo "       \"test\""
    echo "       \"in\""
    echo "       \"upd\""
    echo "where PACKAGES can be package(s) from the arch/aur repository"
    echo
end
