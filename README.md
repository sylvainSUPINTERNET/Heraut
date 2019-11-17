## PetsBNB - API

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
  
**Incomming**
// TODO  : Setup with kubernetes to allow microservice architecture



## Database 

**Dumps** : 
- ./seed/dev
- ./seed/prod

**If you added a modification to the current database, please create a new dump into this directory (./seed/dev) with the following name :**

> - dd/mm/yyyy_dump.sql

## Kubernetes



**Install hyperkit**

> brew uninstall hyperkit


**fix error** 
> rm $(which hyperkit)

> brew install hyperkit

> hyperkit -v


**Create pod**

<code>kubectl api-versions</code>

<code>kubectl create -f pod.yaml</code>

<code>kubectl get pods</code>


## Note
- **Authentication** : For authentication system, the username is actually the email 