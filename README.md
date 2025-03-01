# Termux-Parrot
Termux-Parrot is a script that automatize the ParrotOS Installation on Termux

## Requeriments

- aarch64 based cpu (architecture)

You can check your architecture with this command

``` sh
uname -m
```

## How to Install

### Step 1: Download Installation Script

``` sh
apt update && apt install wget
```

```sh
wget https://github.com/ganarcasas/Termux-Parrot/raw/refs/heads/main/setup.sh
```

### Step 2: Execute Installation Script

``` sh
chmod +x setup.sh
```

``` sh
./setup.sh
```

Type y to install

### Step 3: Run And Configure Parrot

Every time you want to run Parrot use this command:

``` sh
proot-distro login parrot
```

The first time you run parrot you need to use this command to update and download packages (ONLY ONE TIME):

``` sh
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 7A8286AF0E81EE4A
```

### Done!

You installed ParrotOS in termux!

You can check the introduction to ParrotOS [here](https://parrotsec.org/docs/category/introduction)
