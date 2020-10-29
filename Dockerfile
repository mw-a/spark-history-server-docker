ARG SPARK_IMAGE=sasnouskikh/spark:3.0.1_2.12-hadoop_3.2.0_cloud
FROM ${SPARK_IMAGE}

USER root
RUN useradd -m -u 185 spark
USER spark

ENTRYPOINT ["/opt/entrypoint.sh"]
