#!/usr/bin/env bash

# 1. EPEL software repository from Fedora is needed to install rsnapshot
sudo dnf install epel-release

# EPEL should be installed

# 2. Install rsnapshot
sudo dnf install rsnapshot openssh-server rsync

# @TODO add the rest from https://docs.rockylinux.org/guides/backup/rsnapshot_backup/
