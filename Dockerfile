FROM mesosphere/mesos:1.5.0

COPY /elastic-job-cloud-scheduler/target/*.tar.gz /tmp

RUN tar -xvf /tmp/*.tar.gz -C /app

EXPOSE 8899

CMD ["/app/bin/start.sh"]
