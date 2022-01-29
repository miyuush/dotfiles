# Basic commands
abbr --add m 'mkdir -p'

abbr --add .. 'cd ..'
abbr --add ... 'cd ../..'
abbr --add .... 'cd ../../..'

abbr --add df 'df -h'
abbr --add du 'du -h'

abbr --add rm 'rm -i'
abbr --add mv 'mv -i'
abbr --add cp 'cp -i'

if command -v bat
    abbr --add cat 'bat --wrap auto'
end

if command -v exa
    abbr --add l 'exa --icons --classify'
    abbr --add la 'exa --all --icons --classify'
    abbr --add ls 'exa --icons --classify'
    abbr --add ll 'exa --long --all --git --icons'
    abbr --add lt 'exa --long --all --git --icons --tree'
else
    abbr --add l 'ls -hF --color=auto'
    abbr --add ls 'ls -hF --color=auto'
    abbr --add la 'ls -ahF --color=auto'
    abbr --add ll 'ls -alhF --color=auto'
end

abbr --add t 'tmux'

# Vim
abbr --add v 'nvim'
abbr --add vi 'nvim'
abbr --add vim 'nvim'
abbr --add view 'nvim -R'

# Git
abbr --add g 'git'
abbr --add ga 'git add'
abbr --add gs 'git status'
abbr --add gb 'git branch'
abbr --add gp 'git push'
abbr --add gd 'git diff'
abbr --add gci 'git commit'
abbr --add gco 'git checkout'

# Docker
abbr --add dc 'docker container'
abbr --add dcls 'docker container ls'
abbr --add dcr 'docker container run'
abbr --add dcex 'docker container exec -i -t'
abbr --add dcpr 'docker container prune'
abbr --add di 'docker image'
abbr --add dib 'docker image build'
abbr --add dils 'docker image ls'
abbr --add dipr 'docker image prune'
abbr --add dirm 'docker image rm'
abbr --add dipu 'docker image pull'
abbr --add dco 'docker-compose'
abbr --add dcou 'docker-compose up -d'
abbr --add dcod 'docker-compose down'
abbr --add dcor 'docker-compose run'

# kubectl
abbr --add k 'kubectl'
abbr --add kci 'kubectl cluster-info'
abbr --add kg 'kubectl get'
abbr --add kgpo 'kubectl get pods'
abbr --add kgdep 'kubectl get deployment'
abbr --add kgsvc 'kubectl get service'
abbr --add kging 'kubectl get ingress'
abbr --add kgcm 'kubectl get configmap'
abbr --add kgsec 'kubectl get secret'
abbr --add kgno 'kubectl get nodes'
abbr --add kgns 'kubectl get namespaces'
abbr --add kd 'kubectl describe'
abbr --add kdpo 'kubectl describe pods'
abbr --add kddep 'kubectl describe deployment'
abbr --add kdsvc 'kubectl describe service'
abbr --add kding 'kubectl describe ingress'
abbr --add kdcm 'kubectl describe configmap'
abbr --add kdsec 'kubectl describe secret'
abbr --add kdno 'kubectl describe nodes'
abbr --add kdns 'kubectl describe namespaces'
abbr --add ka 'kubectl apply --recursive -f'
abbr --add krm 'kubectl delete'
abbr --add krmf 'kubectl delete --recursive -f'
abbr --add krmpo 'kubectl delete pods'
abbr --add krmdep 'kubectl delete deployment'
abbr --add krmsvc 'kubectl delete service'
abbr --add krming 'kubectl delete ingress'
abbr --add krmcm 'kubectl delete configmap'
abbr --add krmsec 'kubectl delete secret'
abbr --add krmns 'kubectl delete namespaces'
abbr --add kex 'kubectl exec -i -t'
abbr --add klo 'kubectl logs -f'

# Terraform
abbr --add tf 'terraform'
abbr --add tfin 'terraform init'
abbr --add tfp 'terraform plan'
abbr --add tfa 'terraform apply'
abbr --add tfd 'terraform destroy'
abbr --add tfim 'terraform import'
abbr --add tfsh 'terraform show'
abbr --add tff 'terraform fmt'
abbr --add tfv 'terraform validate'
