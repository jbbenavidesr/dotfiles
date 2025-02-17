#!/usr/bin/env bash

script_dir="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)"
configs_dir="$script_dir/../config"
dry="0"

while [[ $# > 0 ]]; do
	if [[ "$1" == "--dry" ]]; then
		dry="1"
	fi
	shift
done

log() {
	if [[ $dry == "1" ]]; then
		echo "[DRY_RUN]: $@"
	else
		echo "$@"
	fi
}

execute() {
	log "execute: $@"
	if [[ $dry == "1" ]]; then
		return
	fi

	"$@"
}

log "--------- dev-env ---------"

log $configs_dir
cd $configs_dir

copy_dir() {
	pushd $1 > /dev/null
	to=$2

	dirs=$(find . -maxdepth 1 -mindepth 1 -type d)
	for dir in $dirs; do
		execute rm -rf $to/$dir
		execute cp -r $dir $to/$dir
	done
	popd > /dev/null
}

copy_file() {
	from=$1
	to=$2
	name=$(basename $from)
	execute rm $to/$name
	execute cp $from $to/$from
}

copy_dir .config ${XDG_CONFIG_DIR:-$HOME/.config}

