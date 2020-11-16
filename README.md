# Docker_RFD

Multiple dockerfiles for all kinds of problems.

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
ssh -i <(path_to_the_file_ssh_key)> root:<(ip_of_host)> -p <(container_port)>
```

Example ssh connection:
```
ssh -i ~/.ssh/ssh_key root:localhost -p 8081
```



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