# CaesarApp

## Установка
* Склонируйте репозиторий `bash-4.4$ git clone git@github.com:4xxi/caesarapp.git`
* [Настройте](https://docs.traefik.io/user-guide/examples/#lets-encrypt-support) traefik.toml Let's Encrypt для Treafik или используйте свой SSL сертификат для своего домена, используя файл `./configs/traefik.toml`.
Если вы используете личный SSL, то пропустите следующий шаг и следуйте инструкции по настройке на [сайте](https://docs.traefik.io/user-guide/examples/#lets-encrypt-support) Traefik
* Запустите сервисы в режиме сохранения настроек SSL `bash-4.4$ docker-compose -f docker-compose.yml -f docker-compose.setup.yml up -d`
* Проверьте работоспособность сервисов использую домены, которые был настроены на *Шаге #2*, проверьте, что файл acme.json содержит данные.
* Остановите сервисы: `bash-4.4$ docker-compose stop`
* Запустить сервеисы в рабочем режиме: `bash-4.4$ docker-compose up -d`
* Настройки Traefik будут сохранены в контейнере `config_traefik`, если необходимо подключить в режиме редактирования, то нужно выполнить *Шаг 3*