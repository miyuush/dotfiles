# Basic commands
alias m='mkdir -p'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias df='df -h'
alias du='du -h'

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

if [ $(command -v bat) ];
then
    alias cat='bat --wrap auto'
fi

if [ $(command -v exa) ];
then
    alias l='exa --icons --classify'
    alias la='exa --all --icons --classify'
    alias ls='exa --icons --classify'
    alias ll='exa --long --all --git --icons'
    alias lt='exa --long --all --git --icons --tree'
else
    alias l='ls -hF --color=auto'
    alias ls='ls -hF --color=auto'
    alias la='ls -ahF --color=auto'
    alias ll='ls -alhF --color=auto'
fi

alias t='tmux'

# Vim
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias view='nvim -R'

# Git
alias g='git'
alias ga='git add'
alias gs='git status'
alias gb='git branch'
alias gp='git push'
alias gd='git diff'
alias gci='git commit'
alias gco='git checkout'

# Docker
alias dc='docker container'
alias dcls='docker container ls'
alias dcr='docker container run'
alias dcex='docker container exec -i -t'
alias dcpr='docker container prune'
alias di='docker image'
alias dib='docker image build'
alias dils='docker image ls'
alias dipr='docker image prune'
alias dirm='docker image rm'
alias dipu='docker image pull'
alias dco='docker-compose'
alias dcou='docker-compose up -d'
alias dcod='docker-compose down'
alias dcor='docker-compose run'

# kubectl
alias k='kubectl'
alias kci='kubectl cluster-info'
alias kg='kubectl get'
alias kgpo='kubectl get pods'
alias kgdep='kubectl get deployment'
alias kgsvc='kubectl get service'
alias kging='kubectl get ingress'
alias kgcm='kubectl get configmap'
alias kgsec='kubectl get secret'
alias kgno='kubectl get nodes'
alias kgns='kubectl get namespaces'
alias kd='kubectl describe'
alias kdpo='kubectl describe pods'
alias kddep='kubectl describe deployment'
alias kdsvc='kubectl describe service'
alias kding='kubectl describe ingress'
alias kdcm='kubectl describe configmap'
alias kdsec='kubectl describe secret'
alias kdno='kubectl describe nodes'
alias kdns='kubectl describe namespaces'
alias ka='kubectl apply --recursive -f'
alias krm='kubectl delete'
alias krmf='kubectl delete --recursive -f'
alias krmpo='kubectl delete pods'
alias krmdep='kubectl delete deployment'
alias krmsvc='kubectl delete service'
alias krming='kubectl delete ingress'
alias krmcm='kubectl delete configmap'
alias krmsec='kubectl delete secret'
alias krmns='kubectl delete namespaces'
alias kex='kubectl exec -i -t'
alias klo='kubectl logs -f'

# Terraform
alias tf='terraform'
alias tfin='terraform init'
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfd='terraform destroy'
alias tfim='terraform import'
alias tfsh='terraform show'
alias tff='terraform fmt'
alias tfv='terraform validate'
