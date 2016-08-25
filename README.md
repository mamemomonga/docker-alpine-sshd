# alpine-linux sshd on Docker
apline-linuxのsshdをDockerで動かす

## build image
イメージの構築

	docker build -t mamemomonga/alpine-sshd .

## start server, upload public key and connect ssh
サーバ起動、公開鍵アップロード、そしてSSH接続

	docker run -d --name alpine-sshd-01 -p 2222:22 mamemomonga/alpine-sshd
	cat ~/.ssh/id_rsa.pub | docker exec -i alpine-sshd-01 sh -c 'cat >> /root/.ssh/authorized_keys'
	ssh -p 2222 root@localhost

