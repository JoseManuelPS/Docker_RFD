# Docker_RFD

Multiple dockerfiles for all kinds of problems.



## Prerequisites

If you want to make use rhel dockerfiles, you should also create a base image called **rhel7:activated** or **rhel8:activated** with an active subscription.



## alpine/basic:v1.0

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t alpine/basic:latest -f ~/projects/docker_rfd/alpine/basic .
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

- _Date: 18/11/2020_

- _Base image versión: alpine:3.12.3_

- _Build on: Docker-CE 20.10.1_

---


## alpine/stress_test:v1.0

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

- _Date: 18/11/2020_

- _Base image versión: alpine:3.12.3_

- _Build on: Docker-CE 20.10.1_

---



## python/basic:v1.0

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t python/basic:latest -f ~/projects/docker_rfd/python/basic .
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

- _Date: 13/12/2020_

- _Base image versión: python:3.9.0-alpine3.12_

- _Build on: Docker-CE 20.10.1_

---


## python/python_server:v1.0

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

- _Date: 11/11/2020_

- _Base image versión: python:3.9.0-alpine3.12_

- _Build on: Docker-CE 20.10.1_

---



## rhel/ansible/basic/

### rhel/ansible/basic/master:v1.1

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

- _Date: 06/04/2021_

- _Base image versión: rhel8:8.3_

- _Build on: Docker-CE 20.10.5_

---


### rhel/ansible/basic/node:v1.1

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

- _Date: 06/04/2021_

- _Base image versión: rhel8:8.3_

- _Build on: Docker-CE 20.10.5_

---


## rhel/ansible/root/

### rhel/ansible/root/master:v1.0

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

- _Date: 06/04/2021_

- _Base image versión: rhel8:8.3_

- _Build on: Docker-CE 20.10.5_

---


### rhel/ansible/root/node:v1.0

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

- _Date: 06/04/2021_

- _Base image versión: rhel8:8.3_

- _Build on: Docker-CE 20.10.5_

---


## rhel/basic:v1.0

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel/basic:latest -f ~/projects/docker_rfd/rhel/basic .
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

- _Date: 14/10/2020_

- _Base image versión: rhel7:7.9_

- _Build on: Docker-CE 20.10.1_

---


## rhel/ssh:v1.0

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

- _Date: 12/12/2020_

- _Base image versión: rhel8:8.2_

- _Build on: Docker-CE 20.10.1_

---


## rhel/zsh:v1.2

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

- _Date: 26/10/2020_

- _Base image versión: rhel8:8.2_

- _Build on: Docker-CE 20.10.1_

---



## ubuntu/ansible/basic

### ubuntu/ansible/basic/master:v1.1
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

- _Date: 06/04/2021_

- _Base image versión: ubuntu:21.04_

- _Build on: Docker-CE 20.10.5_

---


### ubuntu/ansible/basic/node:v1.1

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

- _Date: 06/04/2021_

- _Base image versión: ubuntu:21.04_

- _Build on: Docker-CE 20.10.5_

---


## ubuntu/ansible/root

### ubuntu/ansible/root/master:v1.0
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

- _Date: 06/04/2021_

- _Base image versión: ubuntu:21.04_

- _Build on: Docker-CE 20.10.5_

---


### ubuntu/ansible/root/node:v1.0

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

- _Date: 06/04/2021_

- _Base image versión: ubuntu:21.04_

- _Build on: Docker-CE 20.10.5_

---


## ubuntu/basic:v1.0

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t ubuntu/basic:latest -f ~/projects/docker_rfd/ubuntu/basic .
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

- _Date: 14/10/2020_

- _Base image versión: ubuntu:21.04_

- _Build on: Docker-CE 20.10.1_

---


## ubuntu/ssh:v1.0

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

- _Date: 12/12/2020_

- _Base image versión: ubuntu:21.04_

- _Build on: Docker-CE 20.10.1_

---


## ubuntu/zsh:v1.2

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

- _Date: 26/10/2020_

- _Base image versión: ubuntu:21.04_

- _Build on: Docker-CE 20.10.1_

---


