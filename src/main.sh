function main() {
    parse_arguments "$@"
    source_pakfile
    sanity_check
    if [[ "${o_target}" == "x" ]]; then
        pak_xtarget
        exit 0
    fi

    if [[ "${o_target}" == "clean" ]]; then
        clean_sourcetree
        exit 0
    fi
    build
    if [[ "${o_mode}" == "build" ]]; then
        exit 0
    fi
    package
    if [[ "${o_mode}" == "build package" ]]; then
        exit 0
    fi
    install_package
}
