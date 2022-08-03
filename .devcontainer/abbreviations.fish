# Basic commands
abbr --add -g m 'mkdir -p'

abbr --add -g .. 'cd ..'
abbr --add -g ... 'cd ../..'
abbr --add -g .... 'cd ../../..'

abbr --add -g df 'df -h'
abbr --add -g du 'du -h'

abbr --add -g rm 'rm -i'
abbr --add -g mv 'mv -i'
abbr --add -g cp 'cp -i'

if command -v bat
    abbr --add -g cat 'batcat --wrap auto'
    abbr --add -g bat 'batcat --wrap auto'
end

if command -v exa
    abbr --add -g l 'exa --icons --classify'
    abbr --add -g la 'exa --all --icons --classify'
    abbr --add -g ls 'exa --icons --classify'
    abbr --add -g ll 'exa --long --all --git --icons'
    abbr --add -g lt 'exa --long --all --git --icons --tree'
else
    abbr --add -g l 'ls -hF --color=auto'
    abbr --add -g ls 'ls -hF --color=auto'
    abbr --add -g la 'ls -ahF --color=auto'
    abbr --add -g ll 'ls -alhF --color=auto'
end

abbr --add -g t 'tmux'

# Vim
abbr --add -g v 'vim'
abbr --add -g vi 'vim'

# Git
abbr --add -g g 'git'
abbr --add -g ga 'git add'
abbr --add -g gs 'git status'
abbr --add -g gb 'git branch'
abbr --add -g gp 'git push'
abbr --add -g gd 'git diff'
abbr --add -g gci 'git commit'
abbr --add -g gco 'git checkout'

# Docker
abbr --add -g dc 'docker container'
abbr --add -g dcls 'docker container ls'
abbr --add -g dcr 'docker container run'
abbr --add -g dcex 'docker container exec -i -t'
abbr --add -g dcpr 'docker container prune'
abbr --add -g di 'docker image'
abbr --add -g dib 'docker image build'
abbr --add -g dils 'docker image ls'
abbr --add -g dipr 'docker image prune'
abbr --add -g dirm 'docker image rm'
abbr --add -g dipu 'docker image pull'
abbr --add -g dco 'docker-compose'
abbr --add -g dcou 'docker-compose up -d'
abbr --add -g dcod 'docker-compose down'
abbr --add -g dcor 'docker-compose run'

# kubectl
abbr --add -g k 'kubectl'
abbr --add -g kci 'kubectl cluster-info'
abbr --add -g kg 'kubectl get'
abbr --add -g kgpo 'kubectl get pods'
abbr --add -g kgdep 'kubectl get deployment'
abbr --add -g kgsvc 'kubectl get service'
abbr --add -g kging 'kubectl get ingress'
abbr --add -g kgcm 'kubectl get configmap'
abbr --add -g kgsec 'kubectl get secret'
abbr --add -g kgno 'kubectl get nodes'
abbr --add -g kgns 'kubectl get namespaces'
abbr --add -g kd 'kubectl describe'
abbr --add -g kdpo 'kubectl describe pods'
abbr --add -g kddep 'kubectl describe deployment'
abbr --add -g kdsvc 'kubectl describe service'
abbr --add -g kding 'kubectl describe ingress'
abbr --add -g kdcm 'kubectl describe configmap'
abbr --add -g kdsec 'kubectl describe secret'
abbr --add -g kdno 'kubectl describe nodes'
abbr --add -g kdns 'kubectl describe namespaces'
abbr --add -g ka 'kubectl apply --recursive -f'
abbr --add -g krm 'kubectl delete'
abbr --add -g krmf 'kubectl delete --recursive -f'
abbr --add -g krmpo 'kubectl delete pods'
abbr --add -g krmdep 'kubectl delete deployment'
abbr --add -g krmsvc 'kubectl delete service'
abbr --add -g krming 'kubectl delete ingress'
abbr --add -g krmcm 'kubectl delete configmap'
abbr --add -g krmsec 'kubectl delete secret'
abbr --add -g krmns 'kubectl delete namespaces'
abbr --add -g kex 'kubectl exec -i -t'
abbr --add -g klo 'kubectl logs -f'

# Terraform
abbr --add -g tf 'terraform'
abbr --add -g tfin 'terraform init'
abbr --add -g tfp 'terraform plan'
abbr --add -g tfa 'terraform apply'
abbr --add -g tfd 'terraform destroy'
abbr --add -g tfim 'terraform import'
abbr --add -g tfsh 'terraform show'
abbr --add -g tff 'terraform fmt'
abbr --add -g tfv 'terraform validate'
