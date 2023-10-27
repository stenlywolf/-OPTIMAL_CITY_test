Все комментарии постарался дать по ходу написания манифестов.

За основу был взят проект Django https://gitfront.io/r/deusops/RcVABw5Efwit/Email-Django-app/

В глобальные переменные Gitlab для защищенных веток добавляются:

ALLOWED_HOST - хост, на котором доступно приложение
POSTGRES_DB - имя бд
POSTGRES_USER
POSTGRES_PASSWORD
DB_HOST=db
DB_PORT=5432

Далее - переменные для подключения почтового сервиса

EMAIL_HOST
EMAIL_HOST_USER
EMAIL_HOST_PASSWORD
RECIPIENT_ADDRESS

А также в виде файла добавляются конфиги k8s для деплоя (замены образов) в dev и prod окружения

KUBE_CONFIG_DEV
KUBE_CONFIG_PROD

Сборка через docker:dind, в качестве container registry используется сам Gitlab сервер.
Деплой через Helm (цель - замены образов) с возможностью отката на предыдущую ревизию.

Возможно (и скорее всего) что-то забыл, так как старался писать быстрее.