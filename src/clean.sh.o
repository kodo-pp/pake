function clean_sourcetree() {
    if [[ "$(type -t pak_clean)" == "function" ]]; then
        echo "pake: Cleaning up"
        pak_clean
        rm -rf ".pake"
    fi
}
