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



## ubuntu/zsh

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t ubuntu:zsh -f ~/projects/docker_rfd/ubuntu/zsh/dockerfile ~/projects/docker_rfd/ubuntu/zsh
```



## rhel/basic

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t rhel7:basic -f ~/projects/docker_rfd/rhel/basic .
```



## rhel/zsh

Recommended build instrucction:
```
docker build --force-rm --pull -t <(image_name)>:<(image_version)> -f <(path_to_dockerfile)> <(path_to_build_directory)>
```

Example build instrucction:
```
docker build --force-rm --pull -t rhel8:zsh -f ~/projects/docker_rfd/rhel/zsh/dockerfile ~/projects/docker_rfd/rhel/zsh
```
