# Lokales SetUp

Hier sind ein paar Skripte, die für das Aufsetzen einer lokalen Kubernetes (KinD)
Umgebung inkl. Prometheus-Grafana Stack hilfreich sein können. Dieses SetUp wurde
für eine Demo verwendet.

## Lokales Kubernetes

KinD (Kubernetes in Docker) kann auf Windows mit Docker Desktop und WSL2 leicht
aufgesetzt werden. Das grundsätzliche Setup wird hier beschrieben:

https://kubernetes.io/blog/2020/05/21/wsl-docker-kubernetes-on-the-windows-desktop/

Die hier eingecheckten Skripte sind angelehnt an

https://sookocheff.com/post/kubernetes/local-kubernetes-development-with-kind/

### KinD

Um einen KinD-Cluster mit 3 Nodes zu erstellen kann folgendes Skript ausgeführt werden

`./kind-cluster/createK8sCluster.sh`

### Docker Registry

Damit selbst geschriebene Images im Kubernetes-Cluster ausgeführt werden können,
wird lokal eine Docker Registry benötigt. Diese kann folgendermaßen erstellt
werden

`./kind-cluster/runLocalDockerRegistry.sh`

Die Docker Registry ist unter localhost:5000 erreichbar.

Mit dem Script `./kind-cluster/connectDockerWithKind.sh` wird das Netzwerk des
Kind-Clusters mit dem der Docker Registry verbunden.

### Prometheus & Grafana

Wenn der Cluster steht, kann Prometheus und Grafana deployt werden.

Dazu zuerst Helm installieren:
`./installHelm.sh`

Anschließend die Tools mit dem Script installieren:
`./prometheus-grafana/install.sh`

Mit den Forward-Skripten kann auf die UI der Anwendungen zugegriffen werden:

`./prometheus-grafana/forwardGraf.sh` (http://localhost:3000)
`./prometheus-grafana/forwardProm.sh` (http://localhost:9090)

