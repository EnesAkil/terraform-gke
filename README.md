# terraform-gke
My Terraform Charts to deploy GKE Clusters

## One-Node-Cluster with Workloads
A simple cluster with one node and workloads.

**GKE Cluster**

- Nodepool<br />
  1 Node (n1-standard-1)
- Network<br />
  VPC <br />
  Subnet <br />
  NAT Gateway (outbound traffic)<br />

**Workloads**

- NGINX Ingress Controller (HELM Chart)<br />
  Creates also a Load Balancer with a Public IP in GCP
- Cert Manager (HELM Chart)<br />
  Automatic issuance of SSL-Certificates for Nginx-Ingress Resources<br />
  i.e. for the web service in module "testapp"
- Test-App (nginx webserver)<br />
  simple web app for testing

# Usage

terraform init

# login google cloud gcp
gcloud auth login

# edit variables.tf
- project => set to your gcp project name

# apply terraform chart
terraform apply
```