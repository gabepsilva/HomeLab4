# MYSQL Server
My homelab general purposes databse server

## Setup Process
- Created basic Ubuntu the virtual machine containing public ssh keys and sshd
- Snapshot
- Store access infomation in 1Password: MySQL HOMELAB
- Create additional private documentation in [Notion](https://www.notion.so/gabrielpe/MySQL-11c71bb68aea801a9916f9a0bea7fbc7?pvs=4)


## Testing the playbook

<span style="background-color: yellow; color: black">Please create a Jenkins CI/CD ASAP</span>

<span style="background-color: yellow; color: black">Molecule tests are not working - but list is</span>

```bash
cd mysql
ansible-galaxy install geerlingguy.mysql
echo '<vault secret here!>' > vault_password.txt
# pip install ansible-lint
ANSIBLE_VAULT_PASSWORD_FILE=vault_password.txt ansible-lint main.yml
# pip install molecule docker molecule-docker
molecule create
molecule test
molecule destroy
rm vault_password.txt
```

## Applying the playbook

```bash
ansible-playbook main.yml -i ../inventory \
 --ask-vault-pass --ask-become-pass
```