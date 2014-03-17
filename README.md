puppetinstall
=============

Bash script to install puppet master v3 and puppet agent v3.

## Usage:
    puppetinstall -m|-n <node hostname> -d <domain> [-s <puppet master server ip>] [-t <timezone>] [-y]

## Commands:

Either long or short options are allowed.

    -m                  Install puppet master on the system.
    -n <hostname>       Install puppet agent on the system.
                        If you use -m tag with this, -n tag will be ignored.
    -d <domain>         Domain name of the environment. This will act as a
                        prefix to all the servers of the domain.
                        eg: 
                        if a server is: server23.dc1.example.com
                        your domain must be : dc1.example.com
    -s <ip>             IP address of the puppet master server.
                        This IP address will added to the /etc/hosts file.
    -t <timezone>       This will set the system timezone. Default is Etc/UTC
                        eg: 
                        For Sri Lanka use : Asia/Colombo
    -y                  Forcefully accept the user confirmation.
    -h                  This will print this message.
    -v                  This will activate verbose mode.


## Examples:
    
#### Puppet Master

    $ sudo bash puppetinstall -m -d example.com
      
This will install puppet master on __example.com__ domain with default timezone as __Etc/UTC__.

#### Puppet Agent

    $ sudo bash puppetinstall -n node001 -d example.com -s 192.168.122.1
      
This will install puppet agent on __example.com__ domain with default timezone as __Etc/UTC__.
Agent hostname will be __node001.example.com__ and will point
to the puppet master on __192.168.122.1__ server.

##### Report bugs/issues on https://github.com/thilinapiy/puppetinstall/issues
