FROM ubuntu:14.04
MAINTAINER sam yuan <sam.yuan@aliyun.com>

## DEPENDENCIES ##
RUN echo "deb http://repos.mesosphere.io/ubuntu/ trusty main" > /etc/apt/sources.list.d/mesosphere.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF
RUN apt-get update
RUN apt-get install --assume-yes mesos python-software-properties curl default-jdk

## MARATHON ##
COPY elastic-job-cloud-scheduler/target/*.tar.gz /tmp/app.tar.gz
RUN mkdir -p /app && tar -xvf /tmp/app.tar.gz -C /app --strip=1 && rm -f /tmp/app.tar.gz
RUN ls /app/
EXPOSE 8899

WORKDIR /app

ENTRYPOINT ["/app/bin/dcos.js"]
