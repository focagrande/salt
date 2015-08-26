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

### PuTTY configuration

- 256 color mode

     - In Window > Colours, check "Allow terminal to use xterm 256-colour mode"
     - In Connection > Data, change your "Terminal-type string" to "putty-256color"

- Locale

     - In Window > Translation set Remote character set to "UTF-8"
     - Check "Use Unicode line drawing code points"
