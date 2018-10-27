function build() {
    if [[ "$(type -t pak_prepare)" == "function" ]]; then
        echo "pake: Preparing sources"
        pak_prepare
        echo "pake: Sources are ready"
    fi
    if [[ "$(type -t pak_build)" == "function" ]]; then
        echo "pake: Building"
        pak_build
    fi
    if [[ "$(type -t pak_postbuild)" == "function" ]]; then
        echo "pake: Running post-build actions"
        pak_postbuild
    fi
}
