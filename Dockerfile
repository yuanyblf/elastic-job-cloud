FROM mesosphere/mesos:1.5.0

RUN mkdir -p /app

COPY elastic-job-cloud-scheduler/target/*.tar.gz /app

RUN tar -xvf /app/*.tar.gz

EXPOSE 8899

CMD ["--registry=in_memory"]
ENTRYPOINT ["mesos-master"]
