FROM mesosphere/mesos:1.5.0

COPY elastic-job-cloud-scheduler/target/*.tar.gz /tmp

RUN tar -xvf /tmp/*.tar.gz
RUN mv elastic-job-cloud-scheduler-3.0.0.M1-SNAPSHOT /app
WORKDIR /app

EXPOSE 8899

CMD ["./bin/start.sh"]
