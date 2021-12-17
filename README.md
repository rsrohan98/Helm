# Helm

Hub: Hub is centrol public Repo where all charts are stored. like Docker Hub.

    helm hub : hub.helm.sh
   
 * Search all charts from Public Repo (heb.helm.sh)

    --> helm search hub 

*  Search for specific chart from Public Repo 
 
   --> helm search hub mysql --> Used to search any specific chart in public Repo ( here we are searching mysql chart) 
 
* If we have to search charts from specific Repo we can use below command,

But below command will fail as we have add Repo first before searching charts in it.

   --> helm search repo stable  --> This will not work as before searching any specific repo we need to configure it
 
* Adding Repo 
 
  --> helm repo add stable https://charts.helm.sh/stable  --> This adds Repo to helm. now you can run above command
 
  --> https://charts.helm.sh/stable

  --> helm repo ls  --> Listing configured Repos in Helm client

Once we have downloaded the Charts for mysql from stable repo, lets install it

* Install Charts

  --> helm install stable/mysql --generate-name   --> This will install all resources of K8 for mysql .

  --> helm install myname stable/airflow  --> Giving your name to resources

  --> helm ls  --> This lists what all chats are deployed

* Uninstall Charts 

  --> helm uninstall myname <chart-name>  --> delete chart


## Creating New Chart in helm

* Create New Chart

  --> helm create mychart


![image](https://user-images.githubusercontent.com/63234624/146436793-75310b14-286f-42ff-b412-7b714b4b5ca8.png)
    
   
    
* helm create mychart

  * helm install test-release .\mychart\

  * helm get manifest test-release

  * helm install --debug --dry-run testValuesHelm .\mychart\

  * helm install --debug --dry-run --set costCode="XYZ123" testsetvalue .\mychart\   (This command will override keys value from Values.yaml)

## Deployment of Helm Charts

* helm package <complete path of chart>
* helm repo index . (this generates index file for package)

## Helm dependencies

* helm dependency build ./testhelmproj ( This is used to download all Dependent Charts for our Main chart)

* helm dependency update ./testhelmproj ( this is jus to update if we feel something was changed in dependent chart)

## Packaging and creating Index file

* helm package <complete path of Chart>  --> This packages your chart

* helm repo index . --> This creates index.yaml for the repo you have run the command

  Once you have packaged and created Index.yaml file, you can push your folder to Git.

## Helm history is used to track all history of the deployments deployed

* helm history <name of deployment>

* helm list (this gives list of all deployments) 

* helm rollback <name of deployment> <revision to which we want to rollback>

    eg: helm rollback dpl_rllback_test 3

## Testing and Verification

* helm lint <complete path of chart>  ( this identifes all templates if they are syntactically correct )

* helm test <name of deployment> ( this command uses test yaml written for the pods in tests folder under template folder)

* helm get manifest <deployment name>

* helm get notes <deployment name> ( Helm get commnand is used to get details of deployment)

* helm status <deployment name>

