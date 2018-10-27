function sanity_check() {
    echo "pake: Performing sanity check"
    if ! [[ ${pak_name} =~ [a-zA-Z0-9_-]+ ]]; then
        echo "Error: invalid package name: ${pak_name}"
        exit 1
    fi
    local name
    for name in "${pak_depends[@]}"; do
        if ! [[ ${name} =~ [a-zA-Z0-9_-]+ ]]; then
            echo "Error: invalid dependency name: ${name}"
            exit 1
        fi
    done
}
