# Original Author : Heapbytes <Gourav> (https://github.com/heapbytes)
# I just added showing user@hostname and changed the network adapters

PROMPT='
┌─[%(!.%{%F{yellow}%}.)$USER@%{$fg[white]%}%M] [%F{blue}  %~%f] [%F{green}  $(get_ip_address)%f] $(git_prompt_info)
└─➜ '

RPROMPT='[%F{red}%?%f]'

get_ip_address() {
  if [[ -n "$(ifconfig en0 2>/dev/null)" ]]; then
    echo "%{$fg[green]%}$(ifconfig en0 | awk '/inet / {print $2}')%{$reset_color%}"
  elif [[ -n "$(ifconfig wlan0 2>/dev/null)" ]]; then
    echo "%{$fg[green]%}$(ifconfig wlan0 | awk '/inet / {print $2}')%{$reset_color%}"
  else
    echo "%{$fg[red]%}No IP%{$reset_color%}"
  fi
}
