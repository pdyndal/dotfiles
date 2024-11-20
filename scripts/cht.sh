#!/usr/bin/env bash

declare -a languages=("python" "go" "rust" "javascript")
declare -a core_utils=("curl" "wget" "tmux" "tar" "zip" "git")

declare -a all_utils=("${languages[@]}" "${core_utils[@]}")

selected=$(printf '%s\n' "${all_utils[@]}" | fzf)

read -r -p "Enter the search term: " search_term

parsed_search_term=$(echo "$search_term" | tr ' ' '+')

if [[ ${languages[*]} =~ ${selected} ]]; then
    curl cht.sh/"$selected"/"$search_term" | less
else
    curl cht.sh/"$selected"~"$parsed_search_term" | less
fi

