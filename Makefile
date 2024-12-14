requirements:
	ansible-galaxy collection install -r requirements.yml

requirements-host:
	ansible-playbook --inventory hosts.yml -e ansible_ssh_port=1149 --ask-pass requirements-playbook.yml

main:
	ansible-playbook --inventory hosts.yml -e ansible_ssh_port=1149 --ask-pass --ask-become-pass main-playbook.yml
