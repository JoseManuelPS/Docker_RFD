# Docker_RFD

Multiple dockerfiles for all kinds of problems.



## Prerequisites

Currently all the images have been generated on Docker version **20.10.1**

If you want to make use rhel images, you should also create a base image called **rhel7:activated** or **rhel8:activated** depending on the image you are going to build. An alternative to this would be to remove the <(yum update)> or <(dnf update)> commands from the dockerfiles, but correct operation is not guaranteed.



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

_+ Date: 18/11/2020_

_+ Base image versión: 3.12.3_


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

_+ Date: 18/11/2020_

_+ Base image versión: 3.12.3_



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

_+ Date: 13/12/2020_

_+ Base image versión: 3.9.0-alpine3.12_


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

_+ Date: 11/11/2020_

_+ Base image versión: 3.9.0-alpine3.12_



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

_+ Date: 14/10/2020_

_+ Base image versión: 21.04_


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

_+ Date: 12/12/2020_

_+ Base image versión: 21.04_


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

_+ Date: 26/10/2020_

_+ Base image versión: 21.04_



## rhel/basic

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel7:basic -f ~/projects/docker_rfd/rhel/basic .
```

Recommended run instrucction:
```
docker run --rm -ti <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti rhel7:basic
```
_Last test info:_

_+ Date: 14/10/2020_

_+ Base image versión: 7.9_


## rhel/ssh

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel8:ssh -f ~/projects/docker_rfd/rhel/ssh/dockerfile ~/projects/docker_rfd/rhel/ssh/
```

Recommended run instrucction:
```
docker run -tid -p <(host_port)>:<(container_port)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run -tid -p 8081:22 rhel8:ssh
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

_+ Date: 12/12/2020_

_+ Base image versión: 8.2_


## rhel/zsh

Recommended build instrucction:
```
docker build --force-rm -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm -t rhel8:zsh -f ~/projects/docker_rfd/rhel/zsh/dockerfile ~/projects/docker_rfd/rhel/zsh
```

Recommended run instrucction:
```
docker run --rm -ti --name <(container_name)> <(image_name)>:<(image_version)>
```

Example run instrucction:
```
docker run --rm -ti --name rhel8_basic rhel8:zsh
```
_Last test info:_

_+ Date: 26/10/2020_

_+ Base image versión: 8.2_


