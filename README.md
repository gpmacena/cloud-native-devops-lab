![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white)
![Prometheus](https://img.shields.io/badge/prometheus-%23E6522C.svg?style=for-the-badge&logo=prometheus&logoColor=white)
![Grafana](https://img.shields.io/badge/grafana-%23F46800.svg?style=for-the-badge&logo=grafana&logoColor=white)

# 🧪 Cloud Native DevOps Lab — Project3

Laboratório Cloud Native de DevOps na AWS, focado em **baixo custo**, **automação**, **Kubernetes** e **observabilidade**, utilizando boas práticas de infraestrutura como código, CI/CD e gerenciamento de configuração.

---

## 🎯 Objetivo do Projeto

Criar um laboratório prático para estudo e portfólio profissional, abordando de ponta a ponta:

- Infraestrutura como Código (Terraform).
- Provisionamento em AWS com foco em baixo custo (Arquitetura Single-Tier).
- Kubernetes em ambiente single-node (k3s).
- CI/CD com GitHub Actions (GitOps flow).
- Automação e configuração com Ansible.
- Observabilidade com Prometheus e Grafana.

---

## 🏗️ Arquitetura de Infraestrutura (IaC)

A infraestrutura é gerenciada via **Terraform** com uma estrutura modular e estado remoto:

- **State Management:** Backend configurado em S3 (`sa-east-1`) para persistência do estado.
- **VPC:** Rede customizada sem custos fixos (sem NAT Gateway), utilizando subnets públicas e IGW.
- **Security:** Security Groups granulares: SSH (22), HTTP (80) e K3s API (6443).
- **Compute:** EC2 t3.micro provisionada via módulos reutilizáveis.
- **Configuração:** Inventário dinâmico do Ansible utilizando o plugin `aws_ec2` para detecção automática de hosts via Tags.

---

## 📌 Roadmap do Projeto

### Fase 1 — Infraestrutura Base 
- [x] Estrutura inicial do projeto (Monorepo).
- [x] Terraform modularizado (VPC, Security, EC2).
- [x] Configuração de Backend Remoto (S3).
- [x] Provisionamento de Key Pair e EC2 via Terraform.
- [x] Validação de conectividade via SSH.

### Fase 2 — Automação e Kubernetes 
- [x] Configuração de Inventário Dinâmico (Ansible + AWS Plugin).
- [x] Validação de conectividade Ansible (Ping/Pong).
- [x] Implementação de Playbooks (Docker, k3s).
- [x] Hardening básico do servidor.

### Fase 3 — Aplicação e CI/CD ⏳
- [ ] Criar pipeline no GitHub Actions (Terraform + Ansible).
- [ ] Dockerização da aplicação.
- [ ] Deploy automático via Manifests Kubernetes.

### Fase 4 — Observabilidade ⏳
- [ ] Deploy da stack de monitoramento (Prometheus/Grafana).
- [ ] Dashboards de métricas.

---

## 🛠️ Como Executar (Local)

### Pré-requisitos
- Terraform instalado.
- Ansible e bibliotecas Python (`boto3`, `botocore`).

### Passo a Passo
```bash
# 1. Provisionar Infra
cd terraform/envs
terraform init
terraform apply -auto-approve

# 2. Configurar o Ansible
cd ../../ansible
# O Ansible usará o arquivo inventory/aws_ec2.yml para achar a máquina
ansible-inventory --graph
ansible all -m ping