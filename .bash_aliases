alias start-vpn='sudo openvpn --config /home/adrian/Documents/freshly-adrian.gonzalez@freshlycosmetics.com.ovpn'
alias start-dockers='cd ~/PhpstormProjects/dockerize && sudo docker-compose -p freshlycosmetics up'
alias dcon="_docker_connect"
_docker_connect() {
  containerid=$(docker ps | tail -n +2 | fzf | awk '{print $1}')
  docker exec -it $containerid bash
}
alias emoji-picker='. ~/rofi-emoji.sh'
