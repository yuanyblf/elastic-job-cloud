FROM garland/mesosphere-docker-mesos-master

WORKDIR /

COPY elastic-job-cloud-scheduler/target/*.tar.gz /tmp

RUN tar -xvf /tmp/*.tar.gz

RUN ls elastic-job-cloud-scheduler-3.0.0.M1-SNAPSHOT/

EXPOSE 8899

CMD /elastic-job-cloud-scheduler-3.0.0.M1-SNAPSHOT/bin/dcos.sh
