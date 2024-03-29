# Docker_RFD

Multiple dockerfiles for all kinds of problems.

## Prerequisites

If you want to make use rhel dockerfiles, you should also create a base image called **rhel7:activated** or **rhel8:activated** with an active subscription.



## alpine/basic:v1.0

Basic dockerfile for Alpine.

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t alpine/basic:latest -f ~/projects/docker_rfd/alpine/basic/dockerfile ~/projects/docker_rfd/alpine/basic/
```

Recommended run instrucction:
```
docker run --rm -ti <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti alpine/basic:latest
```

---

_Last test info:_

- _Date: **18/11/2020**_
- _Base image versión: **alpine:3.12.3**_
- _Build on: **Docker-CE 20.10.1**_

---


## alpine/stress_test:v1.0

Basic dockerfile to execute the script **stress_test.sh** over Alpine.

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t alpine/stress_test:latest -f ~/projects/docker_rfd/alpine/stress_test/dockerfile ~/projects/docker_rfd/alpine/stress_test/
```

Recommended run instrucction:
```
docker run --rm -ti <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti alpine/stress_test:latest
```

Example run instrucction (Set test time 20s):
```
docker run --rm -ti -e STTIME=20 alpine/stress_test:latest
```

---

_Last test info:_

- _Date: **18/11/2020**_
- _Base image versión: **alpine:3.12.3**_
- _Build on: **Docker-CE 20.10.1**_

---



## golang/basic:v1.0

Basic dockerfile for Golang.

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t golang/basic:latest -f ~/projects/docker_rfd/golang/basic/dockerfile ~/projects/docker_rfd/golang/basic/
```

Recommended run instrucction:
```
docker run --rm -ti <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti golang/basic:latest
```

---

_Last test info:_

- _Date: **02/06/2021**_
- _Base image versión: **golang:1.16.4**_
- _Build on: **Docker-CE 20.10.6**_

---


## golang/zsh:v1.0 -> golang/workspace

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t golang/workspace:latest -f ~/projects/docker_rfd/golang/workspace/dockerfile ~/projects/docker_rfd/golang/workspace/
```

Recommended run instrucction:
```
docker run --rm -ti <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti golang/workspace:latest
```

---

_Last test info:_

- _Date: **02/06/2021**_
- _Base image versión: **golang:1.16.4**_
- _Build on: **Docker-CE 20.10.6**_

---


## golang/zsh:v1.0

Basic dockerfile to work with zsh over Golang.

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t golang/zsh:latest -f ~/projects/docker_rfd/golang/zsh/dockerfile ~/projects/docker_rfd/golang/zsh/
```

Recommended run instrucction:
```
docker run --rm -ti <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti golang/zsh:latest
```

---

_Last test info:_

- _Date: **02/06/2021**_
- _Base image versión: **golang:1.16.4**_
- _Build on: **Docker-CE 20.10.6**_

---



## python/basic:v1.0

Basic dockerfile for Python.

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t python/basic:latest -f ~/projects/docker_rfd/python/basic/dockerfile ~/projects/docker_rfd/python/basic/
```

Recommended run instrucction:
```
docker run --rm -ti <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti python/basic:latest
```

---

_Last test info:_

- _Date: **13/12/2020**_
- _Base image versión: **python:3.9.0-alpine3.12**_
- _Build on: **Docker-CE 20.10.1**_

---


## python/python_server:v1.0

Basic dockerfile to create a simple http server over Python.

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t python/python_server:latest -f ~/projects/docker_rfd/python/python_server/dockerfile ~/projects/docker_rfd/python/python_server/
```

Recommended run instrucction:
```
docker run --rm -ti -p <(host_port)>:<(docker_port)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti -p 8085:8080 python/python_server:latest
```

---

_Last test info:_

- _Date: **11/11/2020**_
- _Base image versión: **python:3.9.0-alpine3.12**_
- _Build on: **Docker-CE 20.10.1**_

---



## rhel/ansible/basic/:v1.0

### rhel/ansible/basic/master:v1.1

Basic dockerfile to create a simple ansible master node over RHEL8.

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel/ansible/basic/master:latest -f ~/projects/docker_rfd/rhel/ansible/basic/master ~/projects/docker_rfd/rhel/ansible/basic/
```

Recommended run instrucction:
```
docker run -tid --name <(some_container_name)> -h <(some_hostname)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid --name ansible_master -h ansible_master rhel/ansible/basic/master:latest
```

Recommended exec instrucction:
```
docker exec -ti <(container_name)> /bin/zsh
```

Example exec instrucction:
```
docker exec -ti ansible_master /bin/zsh
```

---

_Last test info:_

- _Date: **25/07/2021**_
- _Base image versión: **ubi8/ubi:8.4-206.1626828523**_
- _Build on: **Docker-CE 20.10.7**_

---


### rhel/ansible/basic/node:v1.1

Basic dockerfile to create a simple ansible node over RHEL8.

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel/ansible/basic/node:latest -f ~/projects/docker_rfd/rhel/ansible/basic/node ~/projects/docker_rfd/rhel/ansible/basic/
```

Recommended run instrucction:
```
docker run -tid -p <(host_port)>:<(container_port)> --name <(some_container_name)> -h <(some_hostname)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid -p 8081:22 --name ansible_node_01 -h ansible_node_01 rhel/ansible/basic/node:latest
```

Recommended ssh connection:
```
ssh -i <(path_to_the_file_ssh_key)> user@<(ip_of_host)> -p <(container_port)>
```

Example ssh connection:
```
ssh -i ~/.ssh/ssh_key user@ansible_node_01 -p 8081
```

---

_Last test info:_

- _Date: **25/07/2021**_
- _Base image versión: **ubi8/ubi:8.4-206.1626828523**_
- _Build on: **Docker-CE 20.10.7**_

---


## rhel/ansible/root/:v1.0

### rhel/ansible/root/master:v1.0

Basic dockerfile to create a simple ansible master node over RHEL8.

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel/ansible/root/master:latest -f ~/projects/docker_rfd/rhel/ansible/root/master ~/projects/docker_rfd/rhel/ansible/root/
```

Recommended run instrucction:
```
docker run -tid --name <(some_container_name)> -h <(some_hostname)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid --name ansible_master -h ansible_master rhel/ansible/root/master:latest
```

Recommended exec instrucction:
```
docker exec -ti <(container_name)> /bin/zsh
```

Example exec instrucction:
```
docker exec -ti ansible_master /bin/zsh
```

---

_Last test info:_

- _Date: **19/05/2021**_
- _Base image versión: **rhel8:8.3**_
- _Build on: **Docker-CE 20.10.6**_

---


### rhel/ansible/root/node:v1.0

Basic dockerfile to create a simple ansible node over RHEL8.

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel/ansible/root/node:latest -f ~/projects/docker_rfd/rhel/ansible/root/node ~/projects/docker_rfd/rhel/ansible/root/
```

Recommended run instrucction:
```
docker run -tid -p <(host_port)>:<(container_port)> --name <(some_container_name)> -h <(some_hostname)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid -p 8081:22 --name ansible_node_01 -h ansible_node_01 rhel/ansible/root/node:latest
```

Recommended ssh connection:
```
ssh -i <(path_to_the_file_ssh_key)> root@<(ip_of_host)> -p <(container_port)>
```

Example ssh connection:
```
ssh -i ~/.ssh/ssh_key root@ansible_node_01 -p 8081
```

---

_Last test info:_

- _Date: **19/05/2021**_
- _Base image versión: **rhel8:8.3**_
- _Build on: **Docker-CE 20.10.6**_

---


## rhel/basic:v1.0

Basic dockerfile for RHEL7.

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel/basic:latest -f ~/projects/docker_rfd/rhel/basic/dockerfile ~/projects/docker_rfd/rhel/basic/
```

Recommended run instrucction:
```
docker run --rm -ti <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti rhel/basic:latest
```

---

_Last test info:_

- _Date: **14/10/2020**_
- _Base image versión: **rhel7:7.9**_
- _Build on: **Docker-CE 20.10.1**_

---


## rhel/ssh:v1.0

Basic dockerfile which runs a simple container with the ssh service exposed over RHEL8.

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel/ssh:latest -f ~/projects/docker_rfd/rhel/ssh/dockerfile ~/projects/docker_rfd/rhel/ssh/
```

Recommended run instrucction:
```
docker run -tid -p <(host_port)>:<(container_port)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid -p 8081:22 rhel/ssh:latest
```

Recommended ssh connection:
```
ssh -i <(path_to_the_file_ssh_key)> root@<(ip_of_host)> -p <(container_port)>
```

Example ssh connection:
```
ssh -i ~/.ssh/ssh_key root@localhost -p 8081
```

---

_Last test info:_

- _Date: **12/12/2020**_
- _Base image versión: **rhel8:8.2**_
- _Build on: **Docker-CE 20.10.1**_

---


## rhel/zsh:v1.2 -> rhel/workspace

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel/workspace:latest -f ~/projects/docker_rfd/rhel/workspace/dockerfile ~/projects/docker_rfd/rhel/workspace
```

Recommended run instrucction:
```
docker run --rm -ti --name <(container_name)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti --name rhel_zsh rhel/workspace:latest
```

---

_Last test info:_

- _Date: **26/10/2020**_
- _Base image versión: **rhel8:8.2**_
- _Build on: **Docker-CE 20.10.1**_

---


## rhel/zsh:v1.2

Basic dockerfile to work with zsh over RHEL8.

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel/zsh:latest -f ~/projects/docker_rfd/rhel/zsh/dockerfile ~/projects/docker_rfd/rhel/zsh
```

Recommended run instrucction:
```
docker run --rm -ti --name <(container_name)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti --name rhel_zsh rhel/zsh:latest
```

---

_Last test info:_

- _Date: **26/10/2020**_
- _Base image versión: **rhel8:8.2**_
- _Build on: **Docker-CE 20.10.1**_

---



## ubuntu/ansible/basic:v1.1

### ubuntu/ansible/basic/master:v1.1

Basic dockerfile to create a simple ansible master node over Ubuntu.

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t ubuntu/ansible/basic/master:latest -f ~/projects/docker_rfd/ubuntu/ansible/basic/master ~/projects/docker_rfd/ubuntu/ansible/basic/
```

Recommended run instrucction:
```
docker run -tid --name <(some_container_name)> -h <(some_hostname)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid --name ansible_master -h ansible_master ubuntu/ansible/basic/master:latest
```

Recommended exec instrucction:
```
docker exec -ti <(container_name)> /bin/zsh
```

Example exec instrucction:
```
docker exec -ti ansible_master /bin/zsh
```

---

_Last test info:_

- _Date: **08/04/2022**_
- _Base image versión: **ubuntu:21.04**_
- _Build on: **Docker-CE 20.10.13**_

---


### ubuntu/ansible/basic/node:v1.1

Basic dockerfile to create a simple ansible node over Ubuntu.

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t ubuntu/ansible/basic/node:latest -f ~/projects/docker_rfd/ubuntu/ansible/basic/node ~/projects/docker_rfd/ubuntu/ansible/basic/
```

Recommended run instrucction:
```
docker run -tid -p <(host_port)>:<(container_port)> --name <(some_container_name)> -h <(some_hostname)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid -p 8081:22 --name ansible_node_01 -h ansible_node_01 ubuntu/ansible/basic/node:latest
```

Recommended ssh connection:
```
ssh -i <(path_to_the_file_ssh_key)> user@<(ip_of_host)> -p <(container_port)>
```

Example ssh connection:
```
ssh -i ~/.ssh/ssh_key user@ansible_node_01 -p 8081
```

---

_Last test info:_

- _Date: **08/04/2022**_
- _Base image versión: **ubuntu:21.04**_
- _Build on: **Docker-CE 20.10.13**_

---


## ubuntu/ansible/root:v1.0

### ubuntu/ansible/root/master:v1.0

Basic dockerfile to create a simple ansible master node over Ubuntu.

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t ubuntu/ansible/root/master:latest -f ~/projects/docker_rfd/ubuntu/ansible/root/master ~/projects/docker_rfd/ubuntu/ansible/root/
```

Recommended run instrucction:
```
docker run -tid --name <(some_container_name)> -h <(some_hostname)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid --name ansible_master -h ansible_master ubuntu/ansible/root/master:latest
```

Recommended exec instrucction:
```
docker exec -ti <(container_name)> /bin/zsh
```

Example exec instrucction:
```
docker exec -ti ansible_master /bin/zsh
```

---

_Last test info:_

- _Date: **19/05/2021**_
- _Base image versión: **ubuntu:21.04**_
- _Build on: **Docker-CE 20.10.6**_

---


### ubuntu/ansible/root/node:v1.0

Basic dockerfile to create a simple ansible node over Ubuntu.

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t ubuntu/ansible/root/node:latest -f ~/projects/docker_rfd/ubuntu/ansible/root/node ~/projects/docker_rfd/ubuntu/ansible/root/
```

Recommended run instrucction:
```
docker run -tid -p <(host_port)>:<(container_port)> --name <(some_container_name)> -h <(some_hostname)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid -p 8081:22 --name ansible_node_01 -h ansible_node_01 ubuntu/ansible/root/node:latest
```

Recommended ssh connection:
```
ssh -i <(path_to_the_file_ssh_key)> root@<(ip_of_host)> -p <(container_port)>
```

Example ssh connection:
```
ssh -i ~/.ssh/ssh_key root@ansible_node_01 -p 8081
```

---

_Last test info:_

- _Date: **19/05/2021**_
- _Base image versión: **ubuntu:21.04**_
- _Build on: **Docker-CE 20.10.6**_

---


## ubuntu/basic:v1.0

Basic dockerfile for Ubuntu.

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t ubuntu/basic:latest -f ~/projects/docker_rfd/ubuntu/basic/dockerfile ~/projects/docker_rfd/ubuntu/basic/
```

Recommended run instrucction:
```
docker run --rm -ti <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti ubuntu/basic:latest
```

---

_Last test info:_

- _Date: **14/10/2020**_
- _Base image versión: **ubuntu:21.04**_
- _Build on: **Docker-CE 20.10.1**_

---


## ubuntu/nopasswd:v1.0

Basic dockerfile for Ubuntu.

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t ubuntu/nopasswd:latest -f ~/projects/docker_rfd/ubuntu/nopasswd/dockerfile ~/projects/docker_rfd/ubuntu/nopasswd/
```

Recommended run instrucction:
```
docker run --rm -ti <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti ubuntu/nopasswd:latest
```

---

_Last test info:_

- _Date: **07/05/2022**_
- _Base image versión: **ubuntu:21.04**_
- _Build on: **Docker-CE 20.10.14**_

---


## ubuntu/ssh:v1.0

Basic dockerfile which runs a simple container with the ssh service exposed over Ubuntu.

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t ubuntu/ssh:latest -f ~/projects/docker_rfd/ubuntu/ssh/dockerfile ~/projects/docker_rfd/ubuntu/ssh/
```

Recommended run instrucction:
```
docker run -tid -p <(host_port)>:<(container_port)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid -p 8081:22 ubuntu/ssh:latest
```

Recommended ssh connection:
```
ssh -i <(path_to_the_file_ssh_key)> root@<(ip_of_host)> -p <(container_port)>
```

Example ssh connection:
```
ssh -i ~/.ssh/ssh_key root@localhost -p 8081
```

---

_Last test info:_

- _Date: **12/12/2020**_
- _Base image versión: **ubuntu:21.04**_
- _Build on: **Docker-CE 20.10.1**_

---


## ubuntu/zsh:v1.2 -> ubuntu/workspace


Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t ubuntu/workspace:latest -f ~/projects/docker_rfd/ubuntu/workspace/dockerfile ~/projects/docker_rfd/ubuntu/workspace
```

Recommended run instrucction:
```
docker run --rm -ti --name <(container_name)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti --name ubuntu_basic ubuntu/workspace:latest
```

---

_Last test info:_

- _Date: **26/10/2020**_
- _Base image versión: **ubuntu:21.04**_
- _Build on: **Docker-CE 20.10.1**_

---


## ubuntu/zsh:v1.2

Basic dockerfile to work with zsh over Ubuntu.

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t ubuntu/zsh:latest -f ~/projects/docker_rfd/ubuntu/zsh/dockerfile ~/projects/docker_rfd/ubuntu/zsh
```

Recommended run instrucction:
```
docker run --rm -ti --name <(container_name)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti --name ubuntu_basic ubuntu/zsh:latest
```

---

_Last test info:_

- _Date: **26/10/2020**_
- _Base image versión: **ubuntu:21.04**_
- _Build on: **Docker-CE 20.10.1**_

---


