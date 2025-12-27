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

- Infraestrutura como Código (Terraform)
- Provisionamento em AWS com foco em baixo custo (Arquitetura Single-Tier)
- Kubernetes em ambiente single-node (k3s)
- CI/CD com GitHub Actions
- Automação e configuração com Ansible
- Observabilidade com Prometheus e Grafana
- Evolução documentada commit a commit

---

## 🏗️ Arquitetura de Infraestrutura (IaC)

A infraestrutura é gerenciada via **Terraform** com uma estrutura modular e estado remoto:

- **State Management:** Backend configurado em S3 (`sa-east-1`) com suporte a múltiplos projetos.
- **VPC:** Rede customizada com foco em custo zero (sem NAT Gateway), utilizando apenas subnets públicas.
- **Security:** Security Groups granulares para acesso administrativo (SSH) e público (HTTP).
- **Compute:** EC2 t3.micro provisionada com script de inicialização (User Data) para Bootstrap do Nginx.

---

## 📌 Roadmap do Projeto

### Fase 1 — Infraestrutura Base
- [x] Estrutura inicial do projeto (Monorepo)
- [x] Terraform modularizado (VPC, Security, EC2)
- [x] Configuração de Backend Remoto (S3)
- [x] Validação e Planejamento da Infraestrutura (`terraform plan`)
- [ ] Criar Key Pair e provisionar EC2 via `terraform apply`
- [ ] Testar acesso SSH e HTTP

### Fase 2 — Container e Kubernetes
- [ ] Provisionamento via Ansible (Roles: Docker, k3s)
- [ ] Configuração do Cluster Kubernetes (k3s)
- [ ] Hardening básico do servidor

### Fase 3 — Aplicação
- [ ] Criar aplicação e Dockerfile
- [ ] Configurar manifests de Kubernetes (Deployments/Services)
- [ ] Deploy da aplicação no cluster

### Fase 4 — CI/CD
- [ ] Criar pipeline no GitHub Actions
- [ ] Build e push da imagem para Registry
- [ ] Continuous Deployment automático

### Fase 5 — Observabilidade
- [ ] Deploy da stack de monitoramento (Prometheus/Grafana)
- [ ] Dashboards de métricas de infraestrutura e aplicação

---

## 💰 Controle de Custos

- **Estratégia:** Uso exclusivo de Free Tier ou instâncias de baixo custo (t3.micro).
- **Rede:** Subnets públicas apenas, evitando custos fixos de NAT Gateways.
- **Monitoramento:** Ferramentas Open Source instaladas internamente para evitar custos de serviços gerenciados (CloudWatch/EKS).

---

## 📎 Observações Finais

O projeto utiliza a regra de ouro de caminhos relativos para módulos e separação clara entre código de infraestrutura (`modules`) e definições de ambiente (`envs`).

```bash
# Para replicar o ambiente:
cd terraform/envs
terraform init
terraform plan