![TCP](https://github.com/Peco602/findwall/actions/workflows/tcp.yml/badge.svg)
![UDP](https://github.com/Peco602/findwall/actions/workflows/udp.yml/badge.svg)

# FindWall

## What does it do?

## How do you use it?


```bashcon
$ pip install -r requirements
$ python findwall.py --help

=====================================================================================

        ███████╗██╗███╗   ██╗██████╗ ██╗    ██╗ █████╗ ██╗     ██╗     
        ██╔════╝██║████╗  ██║██╔══██╗██║    ██║██╔══██╗██║     ██║     
        █████╗  ██║██╔██╗ ██║██║  ██║██║ █╗ ██║███████║██║     ██║     
        ██╔══╝  ██║██║╚██╗██║██║  ██║██║███╗██║██╔══██║██║     ██║     
        ██║     ██║██║ ╚████║██████╔╝╚███╔███╔╝██║  ██║███████╗███████╗
        ╚═╝     ╚═╝╚═╝  ╚═══╝╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═╝╚══════╝╚══════╝

=====================================================================================

usage: findwall.py [-h] --ssh-host SSH_HOST [--ssh-port SSH_PORT] --ssh-username SSH_USERNAME [--ssh-password SSH_PASSWORD] [--ssh-key SSH_KEY] --ports PORTS [--udp] [--threads THREADS]

Check if someone is blocking you!

optional arguments:
  -h, --help            show this help message and exit
  --ssh-host SSH_HOST   Remote host
  --ssh-port SSH_PORT   Remote SSH port
  --ssh-username SSH_USERNAME
                        Remote SSH username
  --ssh-password SSH_PASSWORD
                        Remote SSH password
  --ssh-key SSH_KEY     Private SSH key
  --ports PORTS         Port range to scan (default: 1-1024)
  --udp                 Scan in UDP
  --threads THREADS     Number of threads
```

<img src="demo.gif" width="100%"/>
