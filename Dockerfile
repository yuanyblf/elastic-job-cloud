FROM mesosphere/mesos:1.5.0

COPY /elastic-job-cloud-scheduler/target/*.tar.gz /tmp

RUN mkdir -p /tmp/app
RUN tar -xvf /tmp/*.tar.gz -C /tmp/app --strip-components 1
RUN mv /tmp/app /app
WORKDIR /app

EXPOSE 8899

CMD ["./bin/start.sh"]
