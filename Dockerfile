FROM mesosphere/mesos:1.5.0

RUN mkdir -p /app

COPY elastic-job-cloud-scheduler/target/*.tar.gz /app

RUN tar -xvf /app/*.tar.gz

EXPOSE 8899

CMD /app/elastic-job-cloud-scheduler-3.0.0.M1-SNAPSHOT/bin/start.sh
