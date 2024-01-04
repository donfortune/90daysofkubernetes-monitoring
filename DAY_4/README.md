# Setup minikube

Minikube is a tool that allows you to run Kubernetes clusters locally for development and testing purposes. It's designed to simplify the process of setting up a single-node Kubernetes cluster on your local machine, providing an environment where you can deploy, manage, and test containerized applications.

Overview of Minikube Architecture:
- Local Kubernetes Cluster: Minikube sets up a single-node Kubernetes cluster on your local machine, allowing you to simulate a multi-node Kubernetes environment for development purposes.

- Easy Setup: Minikube is designed to be easy to install and use. It provides a simple command-line interface to start, stop, and manage the local Kubernetes cluster.

- Container Orchestration: Kubernetes is an open-source container orchestration platform, and Minikube allows you to experience Kubernetes features and capabilities on a smaller scale locally.

- Driver Support: Minikube supports various virtualization drivers such as VirtualBox, Hyper-V, KVM, and Docker. These drivers help in creating and managing the virtual machine that runs the Kubernetes cluster.

Installing Minikube with VirtualBox
Prerequisites:
Install VirtualBox:

Download and install VirtualBox from the official website: VirtualBox Downloads
Install kubectl:

Install the Kubernetes command-line tool kubectl by following the instructions in the official Kubernetes documentation: Install and Set Up kubectl
Steps:
Install Minikube:

Download the Minikube binary from the official Minikube GitHub releases page: Minikube Releases
Add Minikube to Your PATH:

Extract the downloaded Minikube binary and move it to a directory included in your system's PATH.
Start Minikube Cluster:

Open a terminal and run the following command:
minikube start --driver=virtualbox
This command starts Minikube with the VirtualBox driver. You can replace virtualbox with your preferred hypervisor driver.
Check Cluster Status:

Verify that Minikube is running by executing:
kubectl cluster-info

Deploy Applications:

Use kubectl to deploy and manage your applications on the Minikube cluster.
Access Minikube Dashboard:

Open the Kubernetes dashboard in a web browser with the following command:
minikube dashboard

Additional Commands:
Stop Minikube:
minikube stop


Delete Minikube Cluster:
minikube delete

kubectl is the command-line interface (CLI) tool used to interact with Kubernetes clusters. It allows users to deploy and manage applications, inspect and manage cluster resources, and view logs and troubleshooting information. With kubectl, you can perform various operations on your Kubernetes cluster, making it an essential tool for developers, administrators, and anyone involved in Kubernetes-based application deployment and management.

Here are some common kubectl commands:

Cluster Information:

Display cluster information:
kubectl cluster-info

Nodes:
List all nodes in the cluster:
kubectl get nodes

Pods:
List all pods in the default namespace:
kubectl get pods

Get detailed information about a specific pod:
kubectl describe pod <pod-name>

Follow the logs of a pod:
kubectl logs -f <pod-name>

Deployments:
List all deployments in the default namespace:
kubectl get deployments

Scale a deployment:
kubectl scale deployment <deployment-name> --replicas=<desired-replica-count>

Rollout status and history of a deployment:
kubectl rollout status deployment <deployment-name>
kubectl rollout history deployment <deployment-name>

Services:
List all services in the default namespace:
kubectl get services

Expose a deployment as a service:
kubectl expose deployment <deployment-name> --type=LoadBalancer --port=<service-port>

ConfigMaps and Secrets:
Create a ConfigMap from a file:
kubectl create configmap <configmap-name> --from-file=<path-to-file>

Create a Secret from literal values:
kubectl create secret generic <secret-name> --from-literal=key1=value1 --from-literal=key2=value2

Namespaces:
List all namespaces:
kubectl get namespaces

Switch to a different namespace:
kubectl config set-context --current --namespace=<namespace-name>

Contexts:
List all contexts:
kubectl config get-contexts

Switch to a different context:
kubectl config use-context <context-name>

