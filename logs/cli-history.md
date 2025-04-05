# Google Cloud Provider

Una raccolta dei comandi eseguiti su Cloud Shell di Google

```bash


gcloud config set project revolutcloudbase-dev

gcloud services enable compute.googleapis.com \
                       container.googleapis.com \
                       iam.googleapis.com \
                       cloudresourcemanager.googleapis.com
```


# CLI Command History – RevolutCloudBase

Una raccolta dei comandi eseguiti manualmente durante la configurazione del progetto cloud RevolutCloudBase.
Utile per tracciamento, ripetizione e debug.

```bash
gcloud config set project revolutcloudbase-dev

gcloud services enable compute.googleapis.com \
                       container.googleapis.com \
                       iam.googleapis.com \
          
          curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.22.0/kind-linux-amd64
          chmod +x ./kind
          sudo mv ./kind /usr/local/bin/kind
                     
          docker ps --filter "name=kind"
                       
          kind create cluster --config k8s/kind-cluster.yaml

          kubectl cluster-info --context kind-revolut-kind
 
          kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.10.0/deploy/static/provider/kind/deploy.yaml

          sudo bash -c "echo 127.0.0.1 echo.local >> /etc/hosts"
```
---

## [2025-04-02] – Inizializzazione Terraform (rete VPC)

```bash
sudo snap install terraform --classic

# Spostarsi nella directory dell'infrastruttura
cd infra

# Inizializza Terraform
terraform init

# Verifica il piano di provisioning
terraform plan

# Applica i cambiamenti
terraform apply
```

---

## [TODO] – Creazione cluster GKE

```bash
# Inserisci qui i comandi per creare il cluster Kubernetes su GCP
```

---

## [TODO] – Deploy microservizi su GKE

```bash
# Inserisci qui i comandi per Helm, kubectl o CI/CD
```

---

## [TODO] – Altri comandi utili

```bash
# Esempi
terraform destroy
kubectl get pods
kubectl apply -f k8s/auth-deployment.yaml
