<h1 align="center">kubernetes</h1>
<h4 align="center">Using Kubernetes-based server for Computational Photography Course</h4>

### Instructions
#### Pod Commands

To create a pod, use the command
```bash
kubectl create -f ${pod file}
```

To delete a pod, use the command
```bash
kubectl delete pod ${pod name as in pod file}
```

To list all pods, use the command
```bash
kubectl get pods
```

To copy anything from  a pod to local, use the command
```bash
kubectl cp ${pod name}:${file location} ${local file location}
```

To ssh into a pod, use the command
```bash
kubectl exec -it ${pod name} bash
```

#### Job Commands

To create a job, use the command
```bash
kubectl apply -f ${job file}
```

To delete a job, use the command
```bash
kubectl delete job ${job name as in job file}
```

To list all jobs, use the command
```bash
kubectl get jobs
```

#### Docker Instructions
If the Docker Image needs to be added on to, create a new Dockerfile and add all the required softwares. As an example : 

```bash
# This is the base image which we will be editing to add new softwares
FROM ufoym/deepo:pytorch-py36-cu101
# Run is a docker command, used to RUN all commands in the image's environment
# the base environment for this image is ubuntu
# use the commands according to the base image
# for ex. ubuntu uses 'apt' to install software, while linux flavors like fedora will use 'yum'
RUN apt-get update
RUN apt-get install -y vim
```

Save this code in `Dockerfile` in a local directory. Then, build this docker file and push the built image to `hub.docker.com`. Now you have the edited image, which you can also use to create a pod/job in a kubernetes based server.

To build a docker file, use the command
```bash
docker build -f Dockerfile -t username/imagename:tag .
```

To push a docker file, use the command
```bash
# this commmand is to be used if using hub.docker to store images
# the username is the one registered with hub.docker.com
docker push username/imagename:tag
```
