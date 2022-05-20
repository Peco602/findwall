![TCP](https://github.com/Peco602/findwall/actions/workflows/tcp.yml/badge.svg)
![UDP](https://github.com/Peco602/findwall/actions/workflows/udp.yml/badge.svg)

<img src="demo.gif" width="100%"/>

python findwall.py --ssh-host 172.17.0.2 --ssh-port 22 --ssh-username test --ssh-password test --ports 8000-8010 --threads 3

sudo docker run --rm -v $PWD:/data asciinema/asciicast2gif -t solarized-dark demo.cast demo.gif