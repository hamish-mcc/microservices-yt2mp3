## Overview

Link to [YouTube Tutorial](https://www.youtube.com/watch?v=hmkF77F9TLw)

Tools and Technologies:

- Python
- Flask
- MySQL
- MongoDB (GridFS)
- RabbitMQ
- Docker
- Kubernetes
  - Deployment
  - Service
  - Ingress
  - ConfigMap
  - Secret
  - StatefulSet
  - PersistentVolume

## Working Notes

Run a MySQL container for development:

        docker run --name dev-mysql \
          -e MYSQL_ROOT_PASSWORD=password \
          -v /home/hamishmcc/vol/mysql:/var/lib/mysql \
          -p 3306:3306 \
          -d mysql:5.7

Run a MongoDB container for development

        docker run -d --name dev-mongo \
          -e MONGO_INITDB_DATABASE=videos \
          -p 27017:27017 \
          mongo:6.0.2

Run `minikube addon enable ingress` and update `/etc/hosts` as follows:

    <INGRESS LOAD BALANCER IP>     mp3converter.com
    <INGRESS LOAD BALANCER IP>     rabbitmq-manager.com

Test with

    curl -X POST http://mp3converter.com/login -u user@email.com:Admin123

    curl -X POST -F 'file=@./video/test3.mp4' -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InVzZXJAZW1haWwuY29tIiwiZXhwIjoxNjY4NzE0MDY2LCJpYXQiOjE2Njg2Mjc2NjYsImFkbWluIjp0cnVlfQ.BzoGzE1He8JT1PVzXcwPJsfWxFOvDtkjEny6rgF7uqU' http://mp3converter.com/upload


Continue from 4:45