Source: https://github.com/ifood/ifood-data-engineering-test/blob/master/README.md      
Country: Brazil        

## This is the most recent data engineering public challenge I found on iFood Github  


The files from S3 are not available, that's true, but we have enough resources to simulate the content of these files. If you find a most recent source, please PR to this md with the content, NOT the link for the data :) 
_______________________________
     
     
# iFood Data Engineering Test

## 1st Case: ETL, Governance and API development

This test is not only a single test but a series of them in order to assess different skills that are valuable to our team.
Target audience: everyone looking for a spot at iFood's (Data Engineering) table.

At iFood, Data Engineers are encouraged to look up any tool that might help solve any challenge. Therefore, use whatever language, storage and tools you feel comfortable with. Also, briefly elaborate on your decisions.

So, without further ado, let's get started!

### Sandbox: ETL building

Have you ever heard of... data-driven ? Well, as it happens our Data Analysts and Data Scientists need data from Order, Customer and Restaurant services to create something unique that might impact how we run things around here...
Implement an ETL pipeline to process distinct files and store it in a structured way.

#### Requirements

* Order data comes from our service architecture and are formatted in JSON files. They’re stored in this url: s3://ifood-data-architect-test-source/order.json.gz
* For this test, service teams offered us a dump from restaurant and customer databases as CSV files.
  * Restaurant: s3://ifood-data-architect-test-source/restaurant.csv.gz
  * Consumer: s3://ifood-data-architect-test-source/consumer.csv.gz
* Analysis are done in SQL. Thus, these data must be accessed in a SQL way.
* Data needs to be consistent, we can’t lose anything.
* This ETL needs to be scalable.
* Bonus: Please emulate a streaming source based on those files

Feel free to use any solution to store these data.

#### Deliverable

* You're a data engineer. Feel free to use any language and technology to reach your goal. Languages, frameworks, platforms are not a constraint, but your solution must be inside a docker image, script or notebook ready to be run. Running this container/script or notebook should start reading the specified files and store it in a structured format.

### Data governance & catalog

Privacy, data governance & data catalog are required skills in the Data Engineering team. We need to store all metadata so all datasets could be read on distinct tools.
How would you store all metadata to build a catalog and secure your data ? Your solution should take into account data access and private data protection.

#### Deliverable

* Briefly elaborate on your solution, frameworks, algorithms. If possible, implement the solution on your previous task.

### Sandbox: API development

Everyone is addicted to Data, and your role here is to provide access not only for analysts and scientists, but also for services deployed in our infrastructure.

Requirements:

* There’s this fancy frontend page to restaurants that need to fetch some data. We need you to create an API that serves endpoints to return the following:
  * Count of orders per day for each city and state in our database
  * Top 10 restaurants per customer

* Use the data from the previous task to complete this one.
* The API should answer back a JSON with the desirable information
* Query needs to perform well, be maintainable and return accurate data.
* Business insists in doubling its size each month. This solution needs to be scalable!

You know the drill: Any language, any framework, any platform. Feel free to use anything to help you finishing this task.

#### Deliverable

* Provide a docker image with a backend service. Running this container should start the necessary infrastructure to provide the endpoints


#### References

* Databricks Community: https://community.cloud.databricks.com
* all-spark-notebook docker: https://hub.docker.com/r/jupyter/all-spark-notebook/


## 2nd Case: Task Orchestration Platform

The goal of the exercise below is to evaluate the candidate knowledge and problem solving expertise regarding the main development focuses for the iFood Data Platform team: infra, devops and platform development.

### Task Orchestration Platform

Along with the data lake, a task orchestration platform is the main concern within the data engineering team. It serves as an organized way to define all data workflow inside the company.
An orchestration platform must provide an easy way to define tasks, its rules and dependencies, an scheduler and alarms for task management.

The goal for this exercise is to deploy a simple and scalable Apache Airflow platform.

#### Setup

* The platform must run a DAG with the following tasks:
  * 1st task: Download the file at https://ifood-data-architect-test-source.s3-sa-east-1.amazonaws.com/consumer.csv.gz and save it in a storage
  * 2nd task: Read and print the content of the downloaded file

#### Platform Requirements

* The Platform must not share its own resources with the tasks that the platform runs (i.e. a task that crashes the OS must not affect the platform)
* Isolate airflow scheduler, database and web application
* Use Airflow KubernetesExecutor to run the entire platform inside a Kubernetes cluster
* Use Airflow KubernetesPodOperator to run each task inside a new Kubernetes pod with its own image and environment.

#### Platform Deliverable

* You're a Data Engineer. Feel free to use any language and technology to reach your goal and deliver most requirements needed. Your solution must be inside a docker image, kubernetes manifests, docker compose, script or notebook ready to be run. Running this container/script should start an airflow with specified DAG ready to be run.

#### References

* Airflow documentation available at: https://airflow.apache.org/docs/
* Quick start information on Airflow’s architecture: https://airflow.apache.org/docs/apache-airflow/2.0.0/start.html
* Kubernetes resource templates for Airflow are available at: https://github.com/apache/airflow/tree/master/chart/templates
* Minikube documentation available at: https://minikube.sigs.k8s.io/docs/start/


