#!/bin/bash
adduser --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password -m jungle
usermod -aG sudo jungle
# echo "jungle:5d991220a07e65eb7ab854341691ca7d" | chpasswd
mkdir -p /home/jungle/.ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4W9ib34VKwnK6kGoIcONtplH6PR1ZqvhD31LdRyI6Alf8SiWoqiPBypNxL6k4FO6MBtKoTA0Vnv6E9DfjS8WqRg4qRhglWkshxJPmp+39htYXuj3XRpfRTgiupjpAev3TOI8qrYRnnmD1ojd9NjT/N8DOJmpfAlmG2HwA0v3myDAMWd01BNVB1ZRbZIJ0jrr/uN+6tMLxs4pRgblIlAabRF9nnopYczVsQNPJEiGefRDBpiE5pILZnoLQZF4Yq8JSUm335Fnez9M5AC3hp/VUPkXS+G1PBlgXaVMo6uHZzV2Db98DA1IBE2x1Cx4yhS1IxvzHgsHdBdet0TVSZGOz jungle@ranqiangjun.com' >> /home/jungle/.ssh/authorized_keys
chown jungle:jungle /home/jungle/.ssh/authorized_keys
chown jungle:jungle /home/jungle/.ssh
chmod 600 /home/jungle/.ssh/authorized_keys
chmod 700 /home/jungle/.ssh
echo "jungle ALL=NOPASSWD: ALL" >> /etc/sudoers
