<p align="center">
    <img width="500" src="https://raw.githubusercontent.com/aumiasif/valet-fedora-plus/master/imgs/logo.png" alt="Valet Linux Plus Fedora">
</p>

# Valet Linux Plus Fedora

### Introduction

Valet Linux+ is a development environment for Linux. No Vagrant, no Docker, no /etc/hosts file.

Since Valet Linux+ is intended to replace Valet, it still uses the same valet command-line name. Any changes in its interface are documented below.

### Requirements

```markdown
1. Install or update PHP to 7.1+ version.
2. Install Composer.
3. Install mariadb.
4. Install redis.
```
#### Install Requirements

To install requirement just put the following command on terminal and let it do its job.

You will be asked multiple times for your password. Just make sure you provide the right one.

```markdown
curl -sS https://aumiasif.github.io/valet-fedora-plus/requirements.sh | bash -x
```

Once the command has done installing everything, it will ask for your password and reboot the system.

### Installing Valet

To install Valet, you can just type the following command

```markdown
curl -sS https://aumiasif.github.io/valet-fedora-plus/install.sh | bash -x
```

### Support and Contact

Having trouble with Valet Fedora Plus? Contact me on github.