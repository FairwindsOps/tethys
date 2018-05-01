# tethys
ReactiveOps Candidate Technical Challenge

Listed below are a series of tasks. **Complete as many as you can in the allotted time.** While some tasks naturally build on the previous you do not have to complete them in order. 

You will be asked to provide a public ssh key and you will will be given an username and IP address of an VM on which to complete the tasks. The VM will be running Debian Jessie Linux.

**Alotted time is 1Hr.** You may complete the tasks all in one sitting but are not required to do so. Time keeping is up to you.

---

- Login to EC2 instance
  - SSH into EC2 instance using your assigned username and SSH key pair
- Clone a git repo onto the EC2 Instance
  - Make sure that your `apt-get` package lists are updated
  - Install Git using the builtin package management tool
  - Using `git config` Configure Git with your Github user name and email address
  - Clone this Git repository to your home directory
- Set up workspace
  - Inside the local directory created by the cloned Git repository
    - Use `git branch` to create a local branch with the following name format `<first initial>-<last name>/tech-challenge`
- Install Docker 
  - Install the stable release of `docker-ce` and its pre-requisites for the correct Linux distribution
- Build a Docker image 
  - Using `docker build`, build an image from the Dockerfile within the cloned Git repository
- Run and configure image
  - Read the documentation within the cloned repository and familiarize yourself with the application within
  - Understand the configuration options necessary for the Docker image you just built to run successfully
  - Run the Docker image you just built using `docker run` providing the environment variables necessary and a  `command` option
  - Ensure the web service is exposed and available on port 80 of the EC2 instance
- Modify `Dockerfile`
  - Using the Dockerfile `COMMAND` or `ENTRYPOINT` directives, ensure that the docker image built can be run without the `command` flag being specified 
  - Test your Dockerfile changes by re-building the Docker image and testing it by re-running
  - Once you’re satisfied, use Git to commit your changes to the Dockerfile to your local Git branch
- Make Docker web service survive an EC2 instance restart
  - Ensure the Docker image/web service is running as a named, daemonized container
  - Write a `systemd` definition that will start/stop your named container
  - Ensure `systemd` will restart your container/service if EC2 instance is rebooted
  - Ensure `systemd` will restart your container/service if it is terminated with  `docker kill`
  - Once you’re satisfied, use Git to commit your `systemd` definition to your local Git branch
- Make dockerized web-service write logs to  `/var/log`
  - Using the Docker driver, volumes, a sidecar or a logging agent ensure that your container is logging to a file in `/var/log` on the EC2 host
- Create a `hello-world` style app and containerize it
  - Write a basic script in a language of your choice that echoes “Hello world” to stdout 
  - Write a new `Dockerfile` that will build your script into a Docker image and execute it when the container is run. Ensure any dependencies necessary are included
  - Modify your script to echo an environment variable fed in on the `docker` command line at runtime
  - Ensure that your application functions as expected with  `docker run` and a provided `-e` flag 
  - Once you’re satisfied that your application and container function as intended, commit your code to the local Git branch
- Install and run `minikube` 
  - Following the official documentation, install the correct flavor of `minikube` on the EC2 instance
  - After your minikube cluster is started, ensure `kubectl` is communicating with it properly
- Deploy an application onto minikube cluster
  - In your home directory, clone the following Git repository : https://github.com/reactiveops/k8s-workshop
  - Use the resources within the `common` directory to apply/deploy the workshop’s application and its dependencies to your minikube cluster
  - Ensure the application and its dependencies are deployed in the `k8s-workshop` namespace
  - Ensure that pods of each of the three Deployments within are running successfully
    - You may need to troubleshoot Pods and Deployments with the `kubectl describe`  or `kubectl logs` commands
    - Note any changes you may have made to ensure the applications and services function
  - (Optional) Create a public git repository in  github/gitlab, push the local branch of the `tethys` repository with your changes there and share with us.
