### Virtualmin installed over Centos 6 (AMD64)

#### To run in docker:
docker run --name <name> [--net=<net>] -tid jallegri/virtualmin

#### To configure Virtualmin execute:
```
Docker attach <name>
"sh install.sh -f" 
```
and then enter a fully qualified hostname (for example, host.example.com) of the virtualmin host, that has to be resolved by DNS.
