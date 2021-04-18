alias please=sudo
hetzner_ip=""
export hetzner_ip
alias hetzner="ssh frodo@$hetzner_ip"

function venv {
    if [ ! -d venv ]; then
	python3.9 -m venv venv
	source venv/bin/activate
	pip install -U pip setuptools wheel &> /dev/null
    else
	source venv/bin/activate
    fi
}
export -f venv

alias yeet="git push"
alias yoink="git pull"

function gitpush {
    git commit -a -m "$*"
    git push
}
export -f gitpush
alias gp=gitpush

