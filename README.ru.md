# bemup-workshop-vagrant

32-битный Ubuntu 12.04 сервер с предустановленными инструментами для разработки на Node.js (node.js, git, vim).

## Необходимые инструменты для запуска виртуальной машины — Vagrant и VirtualBox

### Vagrant:
[http://vagrantup.com](http://vagrantup.com)

### VirtualBox:
[https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

## Установка

```
git clone https://github.com/dab/bemup-workshop-vagrant.git
cd bemup-workshop-vagrant
vagrant up
vagrant ssh
```

Готово! 

## Настройки

### пользователь Vagrant

По-умолчанию для пользователя```vagrant``` настроен пароль 'vagrant'. Этот пользователь может пользоваться `sudo`.

### Редактируйте код в своем окружении, запускайте в виртуальной машине

Домашняя директория ```~/``` на машине-хосте синхронизирована с директорией ```/host/``` внутри Vagrant. К примеру, редактируя код в папке ```~/code/``` на вашем компьютере вы можете запустить его внутри вируальной машины, в папке ```/host/code```.

### Сетевые настройки:

Для виртуальной машины сконфигурирован статичный IP: ```192.168.33.10```.

Если запустить `node.js` процесс внутри виртуальной машины, на машине-хосте он будет доступен по адресу:

* ```192.168.33.10:port```

Для удобства, можно добавить в файл ```/etc/hosts``` строку:

```192.168.33.10   bemup-vagrant.localhost```

### GitHub

```
ssh-keygen -t rsa
(Скоприруйте содержимое ~/.ssh/id_rsa.pub в настройки аккаунта на GitHub: https://github.com/settings/ssh)
git config --global user.name '<your name>'
git config --global user.email <your email>
```

## License 
MIT
