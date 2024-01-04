#!/bin/bash


if ! command -v curl &> /dev/null; then
    echo "Error: curl is not installed. Please install curl before running this script."
    exit 1
fi


echo "Installing kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

echo "Installing Minikube..."
curl -LO "https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64"
sudo install minikube-linux-amd64 /usr/local/bin/minikube
rm minikube-linux-amd64


echo "Starting Minikube cluster..."
minikube start --driver=virtualbox


echo -e "\nMinikube version:"
minikube version
echo -e "\nkubectl version:"
kubectl version --client

echo "Minikube and kubectl installation completed successfully!"
