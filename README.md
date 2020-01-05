[![CircleCI](https://circleci.com/gh/georgenizharadze/Operationalize-ML-microservice.svg?style=svg)](https://circleci.com/gh/georgenizharadze/Operationalize-ML-microservice)

## Project Overview

This project is about operationalizing an already trained ML algorithm as a microservice, in the form of a containerized app which can be deployed as a standalone container or on a Kubernetes cluster, to enable self-healing, scaling, rolling updates and rollbacks.    

The pre-trained `sklearn` model is based on the famous Boston housing data and predicts house price according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

## Running the application

To run the microservice locally, you should have Docker and Kubernetes (K8s) installed on your Linux machine (or VM). 

### To run as a standalone Docker container
* Run the `run_docker.sh` script. This will start up a container with the model app running inside it. 
* Run the `make_prediction.sh`. You should thus obtain the predicted price for a house with features such as those listed in the file. 

### To run on K8s
* Run the `run_kubernetes.sh` script. This will start up a K8s cluster and a Deployment object per the specs listed in `deploy.yml` file. It will also create a K8s Service object, per the specs contained in the `svc.yml` file. The Service object provides stable networking for the pods wrapped in the Deployment object. 
* In the `make_prediction.sh` file, change the `PORT` variable from 8000 to 30002 and then run the script. You should get the same output as in the case of a standalone Docker container. 
