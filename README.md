### Virtualmin installed over Centos 6 (AMD64)

[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/3171/badge)](https://bestpractices.coreinfrastructure.org/projects/3171)

[![](https://images.microbadger.com/badges/image/jallegri/virtualmin.svg)](https://microbadger.com/images/jallegri/virtualmin "Get your own image badge on microbadger.com")

#### To run in docker:
docker run --name <name> [--net=<net>] -tid jallegri/virtualmin

#### To configure Virtualmin execute:
```
Docker attach <name>
"sh install.sh -f" 
```
and then enter a fully qualified hostname (for example, host.example.com) of the virtualmin host, that has to be resolved by DNS.
