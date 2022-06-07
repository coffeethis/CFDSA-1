# Workshop02 Intro
# K8S cluster will orchestrate the lifecycle of the containers including restart, nbr of container instances, scheduling.
# serverless K8S includes Knative.
# K8S = PaaS ( similar to Herouku, AWS Beanstalk)
# There are two types of nodes ( Master -> Worker nodes)

# Ways to deploy K8S
# Method 1 : Blog : Bootstrap K8S the hard way on google platform
# Method 2 : Using kubeadm - helps to automate and manage the TLS certs across master and worker nodes. AWS KUPS converts EC2 instances into K8S cluster.
# Method 3 : DigitalOcean will self manage the underlying
# Method 4 : Cluster API ( fairly new) is btw Method 1 & 2 which provides customisation. 


# K8S Control Plane ( Master )
# API server, scheduler, controller manager, etcd

# K8S Data Plane ( Worker )
# Containerd, kubelet and kubeproxy

# Interaction with K8S
# Dashboard, kubectl and programmatic REST API


# single minikube


echo "<cert>" | base64 -d 

openssl x509 -in ca.cert -noout -text | less

Go to home dir and create .kube

cd .kube

cp /Downloads/mycluster-kubeconfig.yaml config 

alias k="/usr/bin/kubectl"

k get ns

k get no -wide

k get pods -A


#Istio - Service mesh
# istio install envoy as a sidecar container to app containers in a multi-container pod. Envoy broker the traffic and establish ssl tunnel ( reverse proxy ).  

# Pod is lowest compute engine. 

# Various types of jobs that creates pods are : deployment , cronjob/job , daemonset ( eg. fluentd) and stateful set.

# to create the pod
kctl create -f pod-bear.yaml

# to inspect default namespace
kctl get po

# to proxy the port. Test with localhost on port 8080
kctl port-forward po/dov-bear 8080:3000

#
kctl describe po

# to define which namespace to deploy
kctl create -f pod-bear.yaml -n myns

# to 
kctl get po -nmyns -owide

# to get back on yaml file settings from etcd
kctl get no/dov-bear -nmyns -oyaml

# to force delete
kctl delete po/dov-bear -nmyns -- force --grace-period=0
export now="--force --grace-period=0"

# apply changes if there are code changes.
kctl apply -f pod-bear.yaml -nmyns

