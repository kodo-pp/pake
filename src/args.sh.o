function parse_arguments() {
    o_allow_unsafe=0
    o_sudo=1
    o_mode='build package'
    o_target=''

    while [[ -n "$1" ]]; do
        case "$1" in
            --allow-unsafe)
                o_allow_unsafe=1
                ;;
            --sudo)
                o_sudo=1
                ;;
            --no-sudo)
                o_sudo=0
                ;;
            --help)
                show_help
                exit 0
                ;;
            --version)
                show_version
                exit 0
                ;;
            -*)
                echo "Error: unknown option: $1"
                show_help
                exit 1
                ;;
            *=*)
                var="${1/=*/}"
                value="${1/*=/}"
                if ! [[ $var =~ [a-zA-Z_][a-zA-Z0-9_]* ]]; then
                    echo "Invalid variable name: ${var}"
                    show_help
                    exit 1
                fi
                eval "$1"
                ;;
            all|build|build-only|clean|install)
                if [[ -n "${o_target}" ]]; then
                    echo "Error: multiple targets specified"
                    show_help
                    exit 1
                fi
                o_target="$1"
                case "$o_target" in
                    all|build)
                        o_mode='build package'
                        ;;
                    build_only)
                        o_mode='build'
                        ;;
                    install)
                        o_mode='build package install'
                        ;;
                esac
                ;;
            x)
                if [[ -n "${o_target}" ]]; then
                    echo "Error: multiple targets specified"
                    show_help
                    exit 1
                fi
                o_target='x'
                XTARGET="$2"
                if [[ -z "${XTARGET}" ]]; then
                    echo "Error: target 'x' requires an argument"
                    show_help
                    exit 1
                fi
                shift
                ;;
            *)
                echo "Error: unknown argument: $1"
                show_help
                exit 1
                ;;
        esac
        shift
    done
    if [[ -z "${o_target}" ]]; then
        echo "Error: no target specified"
        show_help
        exit 1
    fi
}
