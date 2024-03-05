# dockerExam

Exercice 1

3.  docker build -t my_image .

4.  docker run -p 4000:4000 --name dockerExam my_image

Exercice 2

1. telechargement des images:
docker pull mysql:8.0.28
docker pull makouz/tuto_backend:1.0.0
docker pull makouz/tuto_front:1.0.0

2. Création de network:
docker network create networkExam

3. Lancement des conteneur
docker run -d -p 2222:8080 --network networkExam --name backend makouz/tuto_backend:1.0.0
docker run -d -p 8088:80 --network networkExam --name frontend makouz/tuto_front:1.0.0
docker run -d  --network networkExam --name mysql -v ./mysql:/var/lib/mysql  -e MYSQL_DATABASE=testdb mysql:8.0.28
