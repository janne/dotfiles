Dotfiles
========

About
-----

Dockerised dotfiles.

How to install them?
--------------------

- Install [Docker](https://docs.docker.com/engine/installation/)

### Develop locally

#### Run container

```
docker pull janne/dotfiles
docker run -it -h dev janne/dotfiles
```

### Run on Amazon EC2

#### Setup `~/.aws/credentials`

```
[default]
aws_access_key_id = AKID1234567890
aws_secret_access_key = MY-SECRET-KEY
```

#### Setup EC2 instance

```
docker-machine create --driver amazonec2 --amazonec2-region eu-central-1 --amazonec2-instance-type t2.nano sandbox
eval $(docker-machine env sandbox)
```

#### Run container

```
docker pull janne/dotfiles
docker run -it -h dev janne/dotfiles
```

#### Tear down EC2 instance

```
docker-machine rm sandbox
```
