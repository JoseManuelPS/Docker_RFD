# Docker_RFD

Multiple dockerfiles for all kinds of problems.



## Prerequisites

If you want to make use rhel dockerfiles, you should also create a base image called **rhel7:activated** or **rhel8:activated** with an active subscription.



## alpine/basic

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t alpine:basic -f ~/projects/docker_rfd/alpine/basic .
```

Recommended run instrucction:
```
docker run --rm -ti <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti alpine:basic
```
_Last test info:_

- _Date: 18/11/2020_

- _Base image versión: alpine:3.12.3_

- _Build on: Docker-CE 20.10.1_


## alpine/stress_test

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t alpine:stress_test -f ~/projects/docker_rfd/alpine/stress_test/dockerfile ~/projects/docker_rfd/alpine/stress_test/
```

Recommended run instrucction:
```
docker run --rm -ti <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti alpine:stress_test
```

Example run instrucction (Set test time 20s):
```
docker run --rm -ti -e STTIME=20 alpine:stress_test
```
_Last test info:_

- _Date: 18/11/2020_

- _Base image versión: alpine:3.12.3_

- _Build on: Docker-CE 20.10.1_



## python/basic

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t python:basic -f ~/projects/docker_rfd/python/basic .
```

Recommended run instrucction:
```
docker run --rm -ti <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti python:basic
```
_Last test info:_

- _Date: 13/12/2020_

- _Base image versión: python:3.9.0-alpine3.12_

- _Build on: Docker-CE 20.10.1_


## python/python_server

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t python:python_server -f ~/projects/docker_rfd/python/python_server/dockerfile ~/projects/docker_rfd/python/python_server/
```

Recommended run instrucction:
```
docker run --rm -ti -p <(host_port)>:<(docker_port)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti -p 8085:8080 python:python_server
```
_Last test info:_

- _Date: 11/11/2020_

- _Base image versión: python:3.9.0-alpine3.12_

- _Build on: Docker-CE 20.10.1_



## ubuntu/ansible

### ubuntu/ansible/master
Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t ubuntu/ansible:master -f ~/projects/docker_rfd/ubuntu/ansible/master ~/projects/docker_rfd/ubuntu/ansible/
```

Recommended run instrucction:
```
docker run -tid --name <(some_container_name)> -h <(some_hostname)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid --name ansible_master -h ansible_master ubuntu/ansible:master
```

Recommended exec instrucction:
```
docker exec -ti <(container_name)> /bin/zsh
```

Example exec instrucction:
```
docker exec -ti ansible_master /bin/zsh
```
_Last test info:_

- _Date: 23/01/2021_

- _Base image versión: ubuntu:21.04_

- _Build on: Docker-CE 20.10.1_


### ubuntu/ansible/node

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t ubuntu/ansible:node -f ~/projects/docker_rfd/ubuntu/ansible/node ~/projects/docker_rfd/ubuntu/ansible/
```

Recommended run instrucction:
```
docker run -tid -p <(host_port)>:<(container_port)> --name <(some_container_name)> -h <(some_hostname)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid -p 8081:22 --name ansible_node_01 -h ansible_node_01 ubuntu/ansible:node
```

Recommended ssh connection:
```
ssh -i <(path_to_the_file_ssh_key)> root@<(ip_of_host)> -p <(container_port)>
```

Example ssh connection:
```
ssh -i ~/.ssh/ssh_key root@ansible_node_01 -p 8081
```
_Last test info:_

- _Date: 24/01/2021_

- _Base image versión: ubuntu:21.04_

- _Build on: Docker-CE 20.10.1_


## ubuntu/basic

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t ubuntu:basic -f ~/projects/docker_rfd/ubuntu/basic .
```

Recommended run instrucction:
```
docker run --rm -ti <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti ubuntu:basic
```
_Last test info:_

- _Date: 14/10/2020_

- _Base image versión: ubuntu:21.04_

- _Build on: Docker-CE 20.10.1_


## ubuntu/ssh

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t ubuntu:ssh -f ~/projects/docker_rfd/ubuntu/ssh/dockerfile ~/projects/docker_rfd/ubuntu/ssh/
```

Recommended run instrucction:
```
docker run -tid -p <(host_port)>:<(container_port)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid -p 8081:22 ubuntu:ssh
```

Recommended ssh connection:
```
ssh -i <(path_to_the_file_ssh_key)> root@<(ip_of_host)> -p <(container_port)>
```

Example ssh connection:
```
ssh -i ~/.ssh/ssh_key root@localhost -p 8081
```
_Last test info:_

- _Date: 12/12/2020_

- _Base image versión: ubuntu:21.04_

- _Build on: Docker-CE 20.10.1_


## ubuntu/zsh

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t ubuntu:zsh -f ~/projects/docker_rfd/ubuntu/zsh/dockerfile ~/projects/docker_rfd/ubuntu/zsh
```

Recommended run instrucction:
```
docker run --rm -ti --name <(container_name)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti --name ubuntu_basic ubuntu:basic
```
_Last test info:_

- _Date: 26/10/2020_

- _Base image versión: ubuntu:21.04_

- _Build on: Docker-CE 20.10.1_



## rhel/ansible

### rhel/ansible/master
Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel/ansible:master -f ~/projects/docker_rfd/rhel/ansible/master ~/projects/docker_rfd/rhel/ansible/
```

Recommended run instrucction:
```
docker run -tid --name <(some_container_name)> -h <(some_hostname)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid --name ansible_master -h ansible_master rhel/ansible:master
```

Recommended exec instrucction:
```
docker exec -ti <(container_name)> /bin/zsh
```

Example exec instrucction:
```
docker exec -ti ansible_master /bin/zsh
```
_Last test info:_

- _Date: 23/01/2021_

- _Base image versión: rhel8:8.3_

- _Build on: Docker-CE 20.10.1_


### rhel/ansible/node

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel/ansible:node -f ~/projects/docker_rfd/rhel/ansible/node ~/projects/docker_rfd/rhel/ansible/
```

Recommended run instrucction:
```
docker run -tid -p <(host_port)>:<(container_port)> --name <(some_container_name)> -h <(some_hostname)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid -p 8081:22 --name ansible_node_01 -h ansible_node_01 rhel/ansible:node
```

Recommended ssh connection:
```
ssh -i <(path_to_the_file_ssh_key)> root@<(ip_of_host)> -p <(container_port)>
```

Example ssh connection:
```
ssh -i ~/.ssh/ssh_key root@ansible_node_01 -p 8081
```
_Last test info:_

- _Date: 24/01/2021_

- _Base image versión: rhel8:8.3_

- _Build on: Docker-CE 20.10.1_


## rhel/basic

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel:basic -f ~/projects/docker_rfd/rhel/basic .
```

Recommended run instrucction:
```
docker run --rm -ti <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti rhel:basic
```
_Last test info:_

- _Date: 14/10/2020_

- _Base image versión: rhel7:7.9_

- _Build on: Docker-CE 20.10.1_


## rhel/ssh

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel:ssh -f ~/projects/docker_rfd/rhel/ssh/dockerfile ~/projects/docker_rfd/rhel/ssh/
```

Recommended run instrucction:
```
docker run -tid -p <(host_port)>:<(container_port)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid -p 8081:22 rhel:ssh
```

Recommended ssh connection:
```
ssh -i <(path_to_the_file_ssh_key)> root@<(ip_of_host)> -p <(container_port)>
```

Example ssh connection:
```
ssh -i ~/.ssh/ssh_key root@localhost -p 8081
```
_Last test info:_

- _Date: 12/12/2020_

- _Base image versión: rhel8:8.2_

- _Build on: Docker-CE 20.10.1_


## rhel/zsh

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel:zsh -f ~/projects/docker_rfd/rhel/zsh/dockerfile ~/projects/docker_rfd/rhel/zsh
```

Recommended run instrucction:
```
docker run --rm -ti --name <(container_name)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti --name rhel_zsh rhel:zsh
```
_Last test info:_

- _Date: 26/10/2020_

- _Base image versión: rhel8:8.2_

- _Build on: Docker-CE 20.10.1_


