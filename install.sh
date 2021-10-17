#!/bin/zsh


function main() {
    REPO_DIR=$1
    TARGET_DIR=$2

    find ${REPO_DIR}/files -name ".?*" -maxdepth 1 |while read F; do
        FNAME=$(basename $F)

        if [ -e ${TARGET_DIR}/${FNAME} ]; then
            unlink ${TARGET_DIR}/${FNAME}
        fi

        $(cd ${TARGET_DIR} && ln -sf dotfiles/files/$FNAME $FNAME)
    done
}


main $(dirname $0) ${1:=~}
