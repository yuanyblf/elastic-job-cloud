FROM garland/mesosphere-docker-mesos-master

COPY elastic-job-cloud-scheduler/target/*.tar.gz /tmp

RUN mkdir -p /app && tar -xvf /tmp/*.tar.gz -C /app --strip=1 && rm -f /tmp/*.tar.gz

EXPOSE 8899

WORKDIR /app

ENTRYPOINT ["/app/bin/dcos.js"]
