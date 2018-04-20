FROM ubuntu:14.04

MAINTAINER Mesosphere <support@mesosphere.io>

## DEPENDENCIES ##
RUN echo "deb http://repos.mesosphere.io/ubuntu/ trusty main" > /etc/apt/sources.list.d/mesosphere.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF
RUN apt-get update
RUN apt-get install --assume-yes mesos python-software-properties curl default-jdk

ADD elastic-job-cloud-scheduler/target/*.tar.gz /tmp/app.tar.gz
RUN mkdir -p /opt/app && tar -xvf /tmp/app.tar.gz -C /opt/app --strip=1

EXPOSE 8899

ENTRYPOINT ["/opt/app/bin/dcos.sh"]
