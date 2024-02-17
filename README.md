
2) для сборки образа перейти в директорию с докерфайлом и выполнить команду docker build -t my_nginx .
   для запуска контейнера выполнить команду docker run --name nginx_cont -d -p 8080:80 my_nginx
   для проверки сообщения зайти внутрь контейнера docker exec -it nginx_cont bash и выполнить команду curl http://172.17.0.2/helloworld
   чтобы nginx отдавал сообщение "TNX!" - раскоментировать вторую строчку copy в dockerfile, пересобрать образ и запустить новый контейнер

   
   
4) чтобы запустить скрипт с cron: watch -n 15 ./check_container_with_cron.sh
   без cron: bash check_container_without_cron.sh


