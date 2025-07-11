# **Основные комманды для Docker 🐳**

---

## ***Алгоритм запуска***
docker build -t <Путь до исполняемого файла> <Путь до Dockerfile>
docker run <Имя контейнера>
#### *Пример:*
docker build -t my-python-app .
docker run my-python-app

---
## **1. Управление контейнерами**
docker run [опции] <образ> [команда]

#### *Пример:*
docker run -it ubuntu bash          # Интерактивный режим (вход в контейнер)
docker run -d nginx                 # Запуск в фоне (демон)
docker run -p 8080:80 nginx         # Проброс порта (хост:контейнер)
docker run -v /data:/app nginx      # Монтирование тома
docker run --name my_container nginx  # Задать имя контейнеру

### **Просмотр запущенных контейнеров**
docker ps       # Только активные контейнеры
docker ps -a    # Все контейнеры (включая остановленные)

### **Остановка и удаление контейнера**
docker stop <ID_или_имя>      # Остановить контейнер
docker start <ID_или_имя>     # Запустить остановленный контейнер
docker restart <ID_или_имя>   # Перезапустить контейнер
docker rm <ID_или_имя>        # Удалить остановленный контейнер
docker rm -f <ID_или_имя>     # Принудительно удалить (даже если работает)

### **Логи контейнера**
docker logs <ID_или_имя>      # Показать логи
docker logs -f <ID_или_имя>   # Логи в реальном времени (как tail -f)

### **Вход в запущенный контейнер (интерактивная сессия)**
docker exec -it <ID_или_имя> bash

## **2. Управление образами (Images)**
### **Поиск образов в Docker Hub**
docker search nginx

### **Скачивание образа**
docker pull nginx:latest

### **Сборка образа из Dockerfile**
docker build -t my_image:1.0 .

#### *Пояснение:*
-t – задает имя и тег образа.

. – путь к Dockerfile.

### **Просмотр списка образов**
docker images
docker image ls  # Альтернатива

### **Удаление образа**
docker rmi <ID_или_имя>
docker image prune  # Удалить все "висячие" (dangling) образы

## **3. Управление томами (Volumes)**
### **Создание тома**
docker volume create my_volume

### **Список томов**
docker volume ls

### **Удаление тома**
docker volume rm my_volume
docker volume prune  # Удалить неиспользуемые тома

### **Монтирование тома в контейнер**
docker run -v my_volume:/data nginx
