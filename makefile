#!make

help:
		@echo "Usage: make [TARGET]"
		@echo "Targets:"
		@echo -e "\tup    run freeBSD VM"
		@echo -e "\trm    rm freeBSD VM"
		@echo -e "\tssh   ssh connect to vagrant"
		@echo -e "\tping  ping ansible via ssh"

up:
	vagrant up

reload:
	vagrant reload

rm:
	vagrant destroy

ssh:
	vagrant ssh

prod:
	vagrant provision &

ping:
	ansible all -i inventory/host -m ping
