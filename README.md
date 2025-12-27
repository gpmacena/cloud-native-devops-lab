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
- **Provisionamento AWS:** Foco em baixo custo (Arquitetura Single-Tier).
- **Kubernetes:** Ambiente single-node com k3s.
- **CI/CD & GitOps:** Esteira automatizada via GitHub Actions com fluxo de aprovação.
- **Automação:** Gerenciamento de configuração com Ansible.
- **Observabilidade:** Stack Prometheus e Grafana.

---

## 🏗️ Arquitetura de Infraestrutura (IaC) e Automação

A infraestrutura é gerenciada via **Terraform** com uma estrutura modular e estado remoto:

- **State Management:** Backend configurado em S3 (`sa-east-1`) para persistência do estado.
- **VPC:** Rede customizada sem custos fixos (sem NAT Gateway), utilizando subnets públicas e IGW.
- **Security:** Security Groups granulares: SSH (22), HTTP (80) e K3s API (6443).
- **Configuração Dinâmica:** Inventário do Ansible utilizando o plugin `aws_ec2` para detecção automática de hosts via Tags.



---

## 🚀 Esteira de CI/CD (GitHub Actions)

O projeto implementa uma pipeline profissional automatizada com foco em **governança e controle de custos**:

- **Provisionamento & Configuração:** A cada `push` na branch `main`, a pipeline aplica o Terraform e executa os Playbooks do Ansible automaticamente.
- **Approval Gate (Governança):** O processo de destruição da infraestrutura (`terraform destroy`) está vinculado ao ambiente `development` do GitHub, exigindo **aprovação manual** do administrador. Isso garante que o laboratório permaneça ativo apenas durante o período de uso, evitando cobranças indesejadas.

---

## 📌 Roadmap do Projeto

### Fase 1 — Infraestrutura Base ✅
- [x] Estrutura inicial do projeto (Monorepo).
- [x] Terraform modularizado (VPC, Security, EC2).
- [x] Configuração de Backend Remoto (S3).
- [x] Provisionamento de Key Pair e EC2 via Terraform.
- [x] Validação de conectividade via SSH.

### Fase 2 — Automação e Kubernetes ✅
- [x] Configuração de Inventário Dinâmico (Ansible + AWS Plugin).
- [x] Validação de conectividade Ansible (Ping/Pong).
- [x] Implementação de Playbooks (Docker, k3s).
- [x] Hardening básico do servidor (UFW e Security Updates).
- [x] **Pipeline de CI/CD com fluxos de Deploy e Destroy (Aprovação Manual).**

### Fase 3 — Aplicação e CI/CD ⏳
- [ ] Dockerização da aplicação.
- [ ] Deploy automático via Manifests Kubernetes.
- [ ] Configuração de Ingress e acesso externo.

### Fase 4 — Observabilidade ⏳
- [ ] Deploy da stack de monitoramento (Prometheus/Grafana).
- [ ] Dashboards de métricas.

---

## 🛠️ Como Executar

### Operação via GitHub Actions (Recomendado)
1. Certifique-se de que as `Secrets` (AWS e SSH) estão configuradas no repositório.
2. Faça o `push` do código para a branch `main`.
3. Monitore o deploy na aba **Actions**.
4. Para encerrar os recursos e evitar custos, aprove manualmente o job **"Manual Destroy"** no environment `development`.

### Execução Local (Debug)
```bash
# 1. Provisionar Infra
cd terraform/envs
terraform init
terraform apply -auto-approve

# 2. Configurar o Ansible
cd ../../ansible
ansible-inventory --graph
ansible-playbook site.yml