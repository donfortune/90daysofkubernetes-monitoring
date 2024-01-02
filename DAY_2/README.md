![k8s architecture diagram](DAY_2/README.MD/Kubernetes-architecture-diagram-1-1.png)
# lets explain the diagram:

# Nodes:
Physical or virtual machines that form the foundation of the Kubernetes cluster.
Each node runs container runtime (e.g., Docker, containerd) to host and manage containers.

# Control Plane:
The central management entity for the cluster.
Components include:
API Server: Acts as the frontend for the Kubernetes control plane. It exposes the Kubernetes API.
Scheduler: Assigns workloads to nodes based on resource availability and constraints.
Controller Manager: Ensures that the desired state of objects in the cluster matches the actual state.
etcd: A distributed key-value store that stores configuration data, ensuring consistent and reliable cluster state.

# Pods:
The smallest deployable units in Kubernetes.
Containers within a pod share the same network namespace and can communicate with each other using localhost.

# Services:
Abstraction that defines a logical set of pods and a policy for accessing them.
Enables load balancing and service discovery within the cluster.

# ReplicaSets and Deployments:
Controllers that manage the lifecycle and scaling of pods.
ReplicaSet: Ensures a specified number of pod replicas are running.
Deployment: Provides declarative updates to applications, managing ReplicaSets.

# ConfigMaps and Secrets:
Resources to manage configuration data and sensitive information (like passwords), respectively.
Allow decoupling configuration from application code.

# Ingress:
Manages external access to services within the cluster.
Routes external traffic to services based on rules.

# Namespace:
Logical partitioning of the cluster.
Helps in organizing and isolating resources within a cluster.

# Volumes:
Storage abstraction that allows containers to store and share data.
Persistent Volumes (PVs) and Persistent Volume Claims (PVCs) are related concepts for persistent storage.

# Network Policies:
Define how groups of pods communicate with each other and with other network endpoints.