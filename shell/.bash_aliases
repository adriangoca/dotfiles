alias start-vpn='sudo openvpn --config /home/adrian/Documents/freshly-adrian.gonzalez@freshlycosmetics.com.ovpn'
alias start-dockers='cd ~/gitProjects/dockerize && sudo docker-compose -p freshlycosmetics up'
alias dcon="_docker_connect"
_docker_connect() {
  containerid=$(docker ps | tail -n +2 | fzf | awk '{print $1}')
  docker exec -it $containerid bash
}
alias emoji-picker='. ~/rofi-emoji.sh'
alias show-open-files="_show_open_files"
_show_open_files() {
  selected=$(ps axc | awk 'NR > 1' | awk '{print substr($0,index($0,$5))}' | sort -u | fzf)

  if [ ! -z $1 ]; then
    lsof -r 2 -c "$selected"
  else
    lsof -c "$selected"
  fi
}
