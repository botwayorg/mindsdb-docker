FROM mindsdb/mindsdb:latest

ENV MDB_CONFIG_CONTENT='{"api":{"http": {"host": "0.0.0.0","port": "8080"}}}'
ENV MKL_SERVICE_FORCE_INTEL=1

RUN apt-get update -y --fix-missing && apt-get upgrade -y --fix-missing

EXPOSE 47335/tcp
EXPOSE 47336/tcp
EXPOSE 8080/tcp

CMD ["/bin/sh", "-c", "bash /root/mindsdb_launcher.sh start"]
