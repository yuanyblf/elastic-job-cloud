FROM mesosphere/mesos:1.5.0

COPY /elastic-job-cloud-scheduler/target/*.tar.gz /tmp

RUN mkdir -p /app
RUN tar -xvf /tmp/*.tar.gz -C /app --strip-components 1

WORKDIR /app

EXPOSE 8899

CMD ["./bin/start.sh"]
