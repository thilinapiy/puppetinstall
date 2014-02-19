puppetinstall
=============

Bash script to install puppet master v3 and puppet agent v3.

## Usage:
    puppetinstall [-m|--master or -n|--node <node hostname>] -d <domain> -s <puppet master server ip>

## Commands:

Either long or short options are allowed.

    -m, --master          Install puppet master on the system.
    -n, --node <hostname> Install puppet agent on the system.
                          If you use -m tag with this, -n tag will be ignored.
    -d, --domain <domain> Domain name of the environment. This will act as a
                          prefix to all the servers of the domain.
                          eg:
                          if a serrver is: server23.dc1.example.com
                          your domain must be : dc1.example.com
    -s, --serverip <ip>   IP address of the puppetmaster server.
                          This IP address will added to the /etc/hosts file.
    -h, --help            This will print this message.
    -v, --verbose         This will activate verbose mode.

## Examples:
    
#### Puppet Master

    $ sudo puppetinstall -m -d example.com
      
This will install puppet master on __example.com__ domain.

#### Puppet Agent

    $ sudo puppetinstall -n node001 -d example.com -s 192.168.122.1
      
This will install puppet agent on __example.com__ domain.
Agent hostname will be __node001.example.com__ and will point
to the puppet master on 192.168.122.1 server.

##### Report bugs/issues on https://github.com/thilinapiy/puppetinstall/issues
