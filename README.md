# OpenJDK Docker
This is built to create and use [Alpine-based](https://hub.docker.com/_/alpine) images so that installing Java on your physical machine is a thing of the past.

## Java Version
This will start with [openjdk1](https://pkgs.alpinelinux.org/package/edge/community/x86_64/openjdk11) and has the following tags:

- `:11.0`, `:11` and `:latest` (OpenJDK 11)
- `:8.242` and `:8` (OpenJDK 8) (see tags or DockerHub)

## Build it
```
docker build -t maddhacker/openjdk:11.0 . \
    && docker tag maddhacker/openjdk:11.0 maddhacker/openjdk:11 \
    && docker tag maddhacker/openjdk:11.0 maddhacker/openjdk:latest
```

## Bin files
### _*For example only, use/customize as you might need them*_
There are three folders that should have example files.  These files should be on your PATH, and executable. `bin-linux-osx` and `bin-wsl` should be close to the same, but if you're running Docker Server on Windows, then using it via the WSL (Windows Subsystem for Linux) then you'll need a slightly different script.

# DockerHub
This is already built and on [Docker Hub](https://hub.docker.com/r/maddhacker/openjdk)

# Slack
This is one of several projects that are in the works, so feel free to reach out on [Slack](https://maddhacker.slack.com/).  Please email `slack at maddhacker dot com` for an invite.

# Issues
Please use the [Issues tab](../../issues) to report any problems or feature requests.

# License
This is licensed under `Apache 2.0`.  Have fun!
