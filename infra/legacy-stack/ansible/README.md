# ansible

docker、vim、git を centos に用意するための Playbook です。

## 導通確認

```shell
ansible all -i hosts -m ping
```

## デプロイ

```shell
ansible-playbook site.yml -i hosts
```
