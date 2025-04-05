# RevolutCloudBase - Repository Structure Template

repository:
name: revolutcloudbase
description: >
Cloud-native architecture for a modern fintech banking platform based on Google Cloud and Kubernetes (GKE/Kind).
Includes Terraform infrastructure (GCP), Kubernetes deployments (Kind for local, GKE for cloud), CI/CD, and real integration points.

structure:
- path: infra/
  description: Terraform code for provisioning infrastructure (GCP VPC, buckets, IAM, optional GKE).
- path: kind/
  description: Local Kubernetes cluster using Kind (simulating GKE behavior).
- path: k8s/
  description: Kubernetes manifests or Helm charts for microservices.
- path: ci/
  description: CI/CD pipelines (Cloud Build, GitHub Actions).
- path: services/
  description: Mock or real services (auth, card, kyc, etc.) with Dockerfile.
- path: docs/
  description: Architecture diagrams, flowcharts, and explanations.
- path: logs/
  description: CLI command history, deployment logs.
- file: .env.example
  description: Template for environment variables (DO NOT commit secrets).
- file: README.md
  description: Project overview, setup instructions, architecture, and team notes.

readme:
sections:
- title: Overview
content: |
RevolutCloudBase is a modular cloud-native infrastructure platform designed for modern fintech applications.
It follows best practices for secure, scalable, and maintainable architectures.

        The platform leverages:
        - Google Cloud Platform (for real infrastructure: VPC, buckets, IAM, optionally GKE)
        - Kind (Kubernetes in Docker) to simulate GKE clusters for local development
        - Terraform to provision and manage infrastructure as code
        - Kubernetes and Helm for orchestration and deployment

        This project supports the growth of a Cloud Architect Junior into a Senior, by following a structured, real-world-like setup.

    - title: Repository Structure
      content: |
        - infra/: Terraform modules for provisioning infrastructure in GCP
        - kind/: Local Kubernetes setup using Kind
        - k8s/: Helm charts or raw manifests for services
        - services/: Microservices containerized, connected through manifests
        - ci/: Continuous Integration & Delivery (CI/CD) configuration
        - docs/: Documentation and architecture diagrams
        - logs/: CLI history and troubleshooting

    - title: How to Use
      content: |
        1. Clone the repo
        2. Configure your `.env` based on `.env.example`
        3. Provision real infrastructure on GCP (e.g., VPC):
            cd infra && terraform init && terraform apply
        4. Simulate GKE with a local Kubernetes cluster:
            cd kind && kind create cluster --config kind-config.yaml
        5. Deploy services using Helm or kubectl:
            cd k8s && kubectl apply -f ...

    - title: Environment Variables
      content: |
        See `.env.example` for required variables (project_id, region, credentials path, etc.)

    - title: Learning Path
      content: |
        This project is structured to simulate a real Cloud Architect mentorship. You will:
        - Start with provisioning VPCs and GCP resources using Terraform
        - Learn local cluster management with Kind (mimicking GKE)
        - Deploy microservices via manifests or Helm
        - Progressively incorporate monitoring, CI/CD, IAM, and advanced GCP services

    - title: Contributing
      content: |
        Use feature branches and pull requests. Document any change in /docs.
        Junior members are guided by the senior architect for structure and validation.

    - title: License
      content: MIT
