### Docker


Setup quick :

> make image_api && docker-compose up


> ./build-auto-docker.sh <your_image_name>

(root of project)
OR

> $ mvn clean install -DskipTests

> $ docker build -f Dockerfile -t spring-jpa-app . // build image based on Dockerfile, named spring-jpa-app . ( . means the project is copied in this image)

> $ docker-compose up (run it twice else error ...)


**Note**

Run docker-compose up twice (init database else error)

The databse is automaticaly generated by the jbdc url with the query params createDatabaseIfNotExist=true)


**using treescale**

Docke registry 

1) create new account 

2)docker login repo.treescale.com

3)docker push repo.treescale.com/[username]/[image name]:[tag name]

4) docker pull repo.treescale.com/[username]/[image name]:[tag name]

https://github.com/Juniper/contrail-docker/wiki/Push-local-container-image-to-a-docker-registry

**TODO**


dans le code 

docker login docker.io
docker push <username>/<reponame>:<imgtag>


pour l'auth, username est en fait l'email d'un utilisateur utilisé pour generer un JWT ainsi que le token d'authentication de spring security