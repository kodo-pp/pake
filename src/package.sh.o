function package() {
    echo "pake: Starting packaging"
    export PAK_PKGDIR=".pake/pkgdir/files"
    mkdir -p "${PAK_PKGDIR}"
    mkdir -p ".pake/pkgdir/.pak2"
    echo "${pak_name}" > ".pake/pkgdir/.pak2/name"
    echo "${pak_depends[@]}" > ".pake/pkgdir/.pak2/deps"
    if [[ -n "${pak_license_file}" ]]; then
        cat "${pak_license_file}" > ".pake/pkgdir/.pak2/license"
    fi
    pushd . >/dev/null
    pak_package
    popd >/dev/null
    echo "pake: Compressing the package"
    tar -cJf "${pak_archive_name:-${pak_name}.pak}" -C ".pake/pkgdir/" files .pak2 
    echo "pake: Packaged"
}
