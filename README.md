# devbox

### Playground - try it before you buy it

```bash
# comes with openjdk 8
docker run -it --entrypoint=/bin/bash viqueen/teknologi:8-alpine
# comes with openjdk 14
docker run -it --entrypoint=/bin/bash viqueen/teknologi:14-alpine
```

### Setup and Configure
```bash
# required
./setup.sh config_box
npm install .
npm link

# optional, to setup the prompt line
./setup.sh config_prompt

# optional, to setup vim
./setup.sh config_vim
```

### Optional - macOs dev setup

These are more cheat sheets than anything else, and only used on brand new computers
```bash
# installs home_brew and sets some lovely env vars
./setup.sh init_mac
# installs some dev, build tools, along with SpaceVim
./setup.sh init_dev_tools
# installs some sdks
./setup.sh init_sdks
```

### Scripts and Binaries

#### generic stuff

```bash
dev -h          # mainframe
mvnup -h        # maven version upgrade
jsonf           # json pretty format
image -h        # docker things
saymyname       # finds the longest java class name in a directory , I was bored once so I wrote this
```

#### atlassian stuff

```bash
atlas -h        # mainframe
# running and debugging atlassian server instances
confluence -h
jira -h
bitbucket -h
bamboo -h
```

#### confluence devbox

These are the basics, but I trust you can poke around the repo to find out how to tune the options so the scripts are
interacting correctly with the confluence instance you are running (in terms of port, context path, user creds)

This whole repo is designed for simplicity and ease of use, so I do not want to overload it with tons of configurations

For questions find me on https://gitter.im/viqueen/devbox

```bash
# build it
cd confluence-devbox
atlas build
# update the following to match your context path and port
atlas pi confluence 8080 


# setup an smtp server
confdev post setup smtp-server
# create multiple users
confdev post setup users
```