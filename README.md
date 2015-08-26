### Bootstrap Salt Minion

    wget -O - https://bootstrap.saltstack.com | sudo sh

### Configure Salt to run masterless

In `/etc/salt/minion` set:

    file_client: local

### Clone state tree

    cd /srv
    git clone https://github.com/focagrande/salt.git

### Provision

    salt-call --local state.highstate
