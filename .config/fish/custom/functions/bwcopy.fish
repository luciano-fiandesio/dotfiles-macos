# copy bitwarden password

function bwcopy --description "Find and copy a Bitwarden password"
  if command -sq bw and command -sq fzf-tmux 
    bw get item (
    bw list items \
    | jq -r '.[] | [.name, .login.username // "", .id] | @tsv' \
    | column -t -s \t \
    | fzf-tmux --sync --with-nth 1..-2 --preview-window down:2 \
    #--preview 'bw get item (echo {} | awk \'{print $NF}\') | jq -r \'.login.uris | .[] | .uri // empty \'' \
    | awk '{print $NF}'
    ) | jq -r '.login.password' | pbcopy 
  end
end
