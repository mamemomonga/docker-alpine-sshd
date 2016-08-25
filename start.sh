#!/bin/sh
set -xe

if [ ! -e '/etc/ssh/ssh_host_rsa_key' ]; then
	ssh-keygen -t rsa     -N '' -f /etc/ssh/ssh_host_rsa_key
fi

if [ ! -e '/etc/ssh/ssh_host_dsa_key' ]; then
	ssh-keygen -t dsa     -N '' -f /etc/ssh/ssh_host_dsa_key
fi

if [ ! -e '/etc/ssh/ssh_host_ecdsa_key' ]; then
	ssh-keygen -t ecdsa   -N '' -f /etc/ssh/ssh_host_ecdsa_key
fi

if [ ! -e '/etc/ssh/ssh_host_ed25519_key' ]; then
	ssh-keygen -t ed25519 -N '' -f /etc/ssh/ssh_host_ed25519_key
fi

exec /usr/sbin/sshd -D
