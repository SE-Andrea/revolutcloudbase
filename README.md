# RevolutCloudBase - Repository Structure Template

repository:
  name: revolutcloudbase
  description: >
    Cloud-native architecture for a modern fintech banking platform based on Google Cloud and Kubernetes (GKE).
    Includes Terraform infrastructure, Kubernetes deployments, CI/CD and integration points.

structure:
  - path: infra/
    description: Terraform code for provisioning infrastructure (GKE, VPC, SQL, IAM, etc.)
  - path: k8s/
    description: Kubernetes manifests or Helm charts for microservices
  - path: ci/
    description: CI/CD pipelines (Cloud Build, GitHub Actions)
  - path: services/
    description: Mock or real services (auth, card, kyc, etc.) with Dockerfile
  - path: docs/
    description: Architecture diagrams, flowcharts, and explanations
  - path: logs/
    description: CLI command history, deployment logs
  - file: .env.example
    description: Template for environment variables (DO NOT commit secrets)
  - file: README.md
    description: Project overview, setup instructions, architecture, and team notes

readme:
  sections:
    - title: Overview
      content: |
        RevolutCloudBase is a modular cloud infrastructure designed for fintech applications.
        Built on Google Cloud Platform using GKE for orchestration, it integrates CI/CD, API Gateway,
        and external AI services for fraud detection and KYC.

    - title: Repository Structure
      content: |
        - infra/: Terraform modules for infrastructure
        - k8s/: Helm charts or raw manifests
        - services/: Each microservice containerized
        - ci/: CI/CD setup
        - docs/: Architecture diagrams and specs

    - title: How to Use
      content: |
        1. Clone the repo
        2. Configure your `.env` based on `.env.example`
        3. Run Terraform to provision infrastructure:
            cd infra && terraform init && terraform apply
        4. Deploy services via Helm or kubectl

    - title: Environment Variables
      content: |
        See `.env.example` for required variables (project_id, region, credentials path, etc.)

    - title: Contributing
      content: |
        Use feature branches and pull requests. Document any change in /docs.

    - title: License
      content: MIT
