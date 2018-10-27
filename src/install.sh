function install_package() {
    echo "pake: Installing package"
    if [[ "${o_sudo}" == '1' ]]; then
        sudo pak install "${pak_archive_name:-${pak_name}.pak}"
    else
        pak install "${pak_archive_name:-${pak_name}.pak}"
    fi
}
