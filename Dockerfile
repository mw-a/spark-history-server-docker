ARG SPARK_IMAGE=sasnouskikh/spark:3.0.0_2.12-hadoop_3.2.0_cloud
FROM ${SPARK_IMAGE}

$SPARK_HOME/jars

ENTRYPOINT ["/opt/entrypoint.sh"]
