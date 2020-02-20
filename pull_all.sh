#!/bin/bash
# Bash script to pull from all git repositories.

echo ""
count=0

# loop through all files in current directory
for f in *; do
	# check if directory
	if [ -d "$f" ]; then
		cd "$f"

		# check if git repo
		is_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"
		if [ "$is_repo" ]; then
			term_col="$((($count % 5) + 91))"
			echo -e "Pulling from \033[$((term_col))m$f\033[0m"
			git pull

			echo ""
			count="$(($count + 1))"
		fi

		# go to parent
		cd ../
	fi
done
