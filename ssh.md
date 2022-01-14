### Configure passwordless login
```
ssh-keygen -f $USER
ssh-copy-id -i ~/.ssh/id_rsa $USER@remote-server
```
