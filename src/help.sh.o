help_message='Usage: pake [VARIABLE=VALUE ...] [options] <target>
Options:
    --allow-unsafe  Allow building as root
    --sudo          Use sudo when installing packages
    --no-sudo       Don'\''t use sudo when installing packages
    --help          Display this help information and exit
    --version       Display version information and exit

Targets:
    all             Alias to "build"
    build           Build and package
    build-only      Build but don'\''t package
    clean           Clean the source tree from temporary files and binaries
    install         Install the package with pak, possibly building it
    x <target>      Run extra package-specific target script'

function show_help() {
    echo "${help_message}"
}

function show_version() {
    echo "${pake_version}"
}
