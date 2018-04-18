FROM mesosphere/mesos:1.5.0


COPY elastic-job-cloud-scheduler/target/*.tar.gz /tmp

RUN tar -xvf /tmp/*.tar.gz

EXPOSE 8899

CMD elastic-job-cloud-scheduler-3.0.0.M1-SNAPSHOT/bin/start.sh
