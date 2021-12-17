# Helm

Hub: Hub is centrol public Repo where all charts are stored. like Docker Hub.

     _helm hub : hub.helm.sh_
 
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

