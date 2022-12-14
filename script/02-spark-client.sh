
kubectl exec -ti submitter -n spark bash
#



./bin/spark-submit \
  --master k8s://https://158.160.19.143 \
  --name spark-pi --class org.apache.spark.examples.SparkPi \
  --conf spark.kubernetes.container.image=cr.yandex/crpnrpgeeavbefe1cujn/spark:v2.3.0 \
  --conf spark.kubernetes.namespace=spark \
  --conf spark.kubernetes.authenticate.driver.serviceAccountName=spark \
  ./examples/jars/spark-examples_2.12-3.3.1.jar \
  10000


./bin/spark-submit \
  --master k8s://https://158.160.19.143 \
  --name spark-pi --class org.apache.spark.examples.SparkPi \
  --deploy-mode client \
  --conf spark.kubernetes.container.image=cr.yandex/crpnrpgeeavbefe1cujn/spark:v2.3.0 \
  --conf spark.kubernetes.namespace=spark \
  --conf spark.kubernetes.authenticate.driver.serviceAccountName=spark \
  ./examples/jars/spark-examples_2.12-3.3.1.jar \
  1000


./bin/spark-submit \
  --master k8s://https://158.160.19.143 \
  --name spark-pi --class org.apache.spark.examples.SparkPi \
  --num-executors 3 \
  --executor-cores 3 \
  --executor-memory 2G \
  --conf spark.kubernetes.container.image=cr.yandex/crpnrpgeeavbefe1cujn/spark:v2.3.0 \
  --conf spark.kubernetes.namespace=spark \
  --conf spark.kubernetes.authenticate.driver.serviceAccountName=spark \
  ./examples/jars/spark-examples_2.12-3.3.1.jar \
  100000

./bin/spark-submit \
  --master k8s://https://158.160.19.143 \
  --name spark-pi --class org.apache.spark.examples.SparkPi \
  --total-executor-cores 9 \
  --conf spark.kubernetes.container.image=cr.yandex/crpnrpgeeavbefe1cujn/spark:v2.3.0 \
  --conf spark.kubernetes.namespace=spark \
  --conf spark.kubernetes.authenticate.driver.serviceAccountName=spark \
  ./examples/jars/spark-examples_2.12-3.3.1.jar \
  100000

