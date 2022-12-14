

# install yandex console
iex (New-Object System.Net.WebClient).DownloadString('https://storage.yandexcloud.net/yandexcloud-yc/install.ps1')

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://storage.yandexcloud.net/yandexcloud-yc/install.ps1'))" && SET "PATH=%PATH%;%USERPROFILE%\yandex-cloud\bin"

yc init

yc config list

yc managed-kubernetes cluster get-credentials spark-cluster --external

kubectl cluster-info --kubeconfig C:\Users\Vadim\.kube\config

yc iam key create --service-account-name vanja1616 -o key.json

# shell
cat key.json | docker login \

# windows
type key.json | docker login --username json_key --password-stdin cr.yandex

# check cluster
yc managed-kubernetes cluster list



# kubernetes
kubectl cluster-info
kubectl config view


# kubernetus client
kubectl run -n spark --image ubuntu:latest submitter -- /bin/bash -c 'sleep 1000000'

kubectl get pods -n spark

kubectl exec -ti submitter -n spark bash





# magic
kubectl apply -f C:\Users\Vadim\IdeaProjects\cassandra-scylla\test.yaml
kubectl apply -f C:\Users\Vadim\IdeaProjects\cassandra-scylla\test2.yaml


# open spark ui
kubectl port-forward pod/submitter -n spark 4040:4040

