nohup kubectl port-forward --namespace kubeapps svc/acoustic-adjustment-spark-master-svc 9090:80 --address 0.0.0.0 > /tmp/log.s 2> 1 &
nohup kubectl port-forward -n kubeapps svc/kubeapps --address 0.0.0.0 80:80 > /tmp/log.s 2> 1 &
nohup  kubectl port-forward -n spark mere-cars-hdfs-namenode-0 50070:50070 --address 0.0.0.0 > /tmp/log.s 2> 1 &