#!/bin/bash
set -euo pipefail

USAGE="
Install Octave using Ansible.

USAGE
    install.sh <systemname> <target> <version>

EXAMPLES
    # Install Octave version 9.1.0 to Puhti:

    install.sh puhti octave 9.1.0
"

case ${1:-} in
    local|localhost)
        GROUPNAME=group_localhost
        ;;
    puhti)
        GROUPNAME=group_puhti
        ;;
    mahti)
        GROUPNAME=group_mahti
        ;;
    help|-h|--help)
        echo "$USAGE"
        exit 0
        ;;
    *)
        echo "$USAGE" >&2
        exit 1
        ;;
esac
shift 1

TARGET=$1
shift 1

VERSION=$1
shift 1

ansible-playbook -i hosts.yaml -l "$GROUPNAME" -e "version=$VERSION" "$TARGET/install.yaml" "$@"
