# 🧪 Cloud Native DevOps Lab — Project3

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white)
![Prometheus](https://img.shields.io/badge/prometheus-%23E6522C.svg?style=for-the-badge&logo=prometheus&logoColor=white)
![Grafana](https://img.shields.io/badge/grafana-%23F46800.svg?style=for-the-badge&logo=grafana&logoColor=white)

Laboratório Cloud Native de DevOps na AWS, focado em **baixo custo**, **automação**, **Kubernetes** e **observabilidade**, utilizando boas práticas de infraestrutura como código (IaC), CI/CD e gerenciamento de configuração.

---

## 🎯 Objetivo do Projeto

Criar um laboratório prático para estudo e portfólio profissional, abordando de ponta a ponta:

- **Infraestrutura como Código:** Provisionamento modular com Terraform.
- **Provisionamento AWS:** Utilização de instâncias `t3.small` para suporte à stack de monitoramento.
- **Kubernetes:** Ambiente single-node com K3s leve e funcional.
- **CI/CD & GitOps:** Esteira automatizada via GitHub Actions com fluxo de aprovação manual para destruição de recursos.
- **Automação:** Gerenciamento de configuração com Ansible utilizando *Server-Side Apply* para manifestos complexos.
- **Observabilidade:** Stack Prometheus Operator e Grafana com Dashboards dinâmicos.

---

## 🏗️ Arquitetura de Infraestrutura (IaC) e Automação

A infraestrutura é gerenciada via **Terraform** com uma estrutura modular e estado remoto:

- **State Management:** Backend configurado em S3 (`sa-east-1`) para persistência do estado.
- **VPC:** Rede customizada com subnets públicas e IGW.
- **Segurança:** Security Groups configurados para SSH (22), App (30080) e Grafana (32000).
- **Gerenciamento:** Instalação automatizada do Prometheus Operator via Ansible, corrigindo limitações de tamanho de manifesto do Kubernetes através de *Server-Side Apply*.

---

## 🚀 Esteira de CI/CD (GitHub Actions)

O projeto implementa uma pipeline profissional automatizada com foco em **governança e controle de custos**:

- **Provisionamento & Configuração:** A cada `push` na branch `main`, a pipeline aplica o Terraform e executa os Playbooks do Ansible.
- **Manual Destroy (FinOps):** O processo de destruição (`terraform destroy`) exige **aprovação manual**, garantindo que o laboratório permaneça ativo apenas durante o uso para evitar custos desnecessários na AWS.

---

## 📌 Roadmap do Projeto

### Fase 1 — Infraestrutura Base ✅
- [x] Terraform modularizado e Backend Remoto (S3).
- [x] Provisionamento de EC2 (`t3.small`) e VPC.

### Fase 2 — Automação e Kubernetes ✅
- [x] Configuração de Inventário Dinâmico (Ansible + AWS).
- [x] Implementação de Playbooks (Docker, K3s).
- [x] Pipeline de CI/CD com Deploy automatizado.

### Fase 3 — Aplicação e CI/CD ✅
- [x] Dockerização da aplicação.
- [x] Deploy via Manifests Kubernetes e exposição via NodePort.

### Fase 4 — Observabilidade ✅
- [x] Deploy do Prometheus Operator (Fix: Server-Side Apply).
- [x] Configuração de Data Source entre Grafana e Prometheus via rede interna do K3s.
- [x] Importação de Dashboards para monitoramento de recursos do Cluster.

---

## 🛠️ Como Executar

### Operação via GitHub Actions
1. Configure as `Secrets` (AWS e SSH) no repositório.
2. Faça o `push` para a branch `main`.
3. Acesse a aplicação em: `http://<IP_EC2>:30080`.
4. Acesse o Grafana em: `http://<IP_EC2>:32000` (User: `admin` / Pass: `admin`).
5. **Para encerrar:** Aprove manualmente o job **"Manual Destroy"** no environment `development`.

### Execução Local (Debug)
```bash
# Provisionar Infra
cd terraform/envs && terraform init && terraform apply -auto-approve

# Configurar com Ansible
cd ../../ansible && ansible-playbook site.yml