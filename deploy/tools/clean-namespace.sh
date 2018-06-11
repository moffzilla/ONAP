#!/bin/bash

ENVIRON=$1
if [ -z $ENVIRON ];
then
    echo "Missing environ"
    exit 1
fi

kubectl delete namespace $ENVIRON
kubectl delete namespace dcae
kubectl delete namespace dev
sudo helm delete --purge dev
sudo helm delete --purge $ENVIRON
sudo helm delete --purge onap
sudo helm delete --purge dcae

sleep 1
# verify
DELETED=$(kubectl get pods --all-namespaces -a | -E '0/|1/2' | wc -l)
echo "verify deletion is finished."
while [  $(kubectl get pods --all-namespaces | grep -E '0/|1/2' | wc -l) -gt 0 ]; do
    sleep 15
    echo "waiting for deletions to complete"
done
# wait for 0/1 before deleting
echo "sleeping 30 sec"
# delete potential hanging clustered pods
kubectl delete pod $ENVIRON-aaf-sms-vault-0 -n $ENVIRON --grace-period=0 --force
kubectl delete pod $ENVIRON-aai-cassandra-0 -n $ENVIRON --grace-period=0 --force
kubectl delete pod $ENVIRON-aai-cassandra-1 -n $ENVIRON --grace-period=0 --force
kubectl delete pod $ENVIRON-aai-cassandra-2 -n $ENVIRON --grace-period=0 --force
# specific to when there is no helm release
kubectl delete pv --all
kubectl delete clusterrolebinding --all
# replace with watch
# keep jenkins 120 sec timeout happy with echos

sleep 30
echo "List of ONAP Modules - look for terminating pods"
LIST_ALL=$(kubectl get pods --all-namespaces --show-all -o wide )
echo "${LIST_ALL}"
