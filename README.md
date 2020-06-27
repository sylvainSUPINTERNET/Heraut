## PetsBNB - API - Microservices

**Note**

Make sure that you have the petsbnb_rework (application project) directory at the same root of this project for using the docker-compose.yml 

OR

just change the volume path to make it correspond to your setup

### Start (Docker)

*These commands are used in dev/prod/preprod*

**Important**
> Edit the **.env** file with your correct credentials / repository etc ...


**Build image**  : 

    $ make image_api_dev
    
**Build image + container + start**  : 

    $ make docker_start_api_dev
    
**Deploy image to docker repository**  : 

https://hub.docker.com/repository/docker/sylvainneung/petsbnb (private)

    $ make docker_deploy_registry_dev
    
**Utils**

    $ make docker_clear

  
  
## Database 

**Dumps** : 
- ./seed/dev
- ./seed/prod

**If you added a modification to the current database, please create a new dump into this directory (./seed/dev) with the following name :**

> - dd/mm/yyyy_dump.sql



**Connection locally**

127.0.0.1:2012 

login : root 

pass : root


## Nginx Proxy & Reverse Proxy

**Why ?**
We using Nginx as Proxy for API and reverse proxy for the application (don't use CORS anymore, hide the api / services) ans also as load balancer

Combinate with Docker containers, we also allow to make a microservice architecture, robust with an infinite scale capacity (limited by the hardwares).


**Nginx port**
 
    localhost:4200 (every requests)
    
**Nginx locations**
    
   
   _Application_
     
     localhost:4200/ 

    
   
   _API_
     
     localhost:4200/api/ 
     
     
   _Services_
     
     localhost:4200/service-<service_name>/


## Run tests: 

Default env is local (please check the application.properties in test/java/resource)

```
$ mvn clean test
```
     
## Important
- **Authentication** : For authentication system, the username is actually the email 