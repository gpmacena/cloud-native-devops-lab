![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white)
![Prometheus](https://img.shields.io/badge/prometheus-%23E6522C.svg?style=for-the-badge&logo=prometheus&logoColor=white)
![Grafana](https://img.shields.io/badge/grafana-%23F46800.svg?style=for-the-badge&logo=grafana&logoColor=white)

# 🧪 Cloud Native DevOps Lab

Laboratório Cloud Native de DevOps na AWS utilizando Kubernetes, GitHub Actions, Ansible, Prometheus e Grafana, com arquitetura de baixo custo.

---

## 🎯 Objetivo do Projeto

Este projeto tem como objetivo criar um laboratório prático de DevOps e Observabilidade, focado em:

- Infraestrutura na AWS com baixo custo
- Execução de workloads containerizados
- Automação de CI/CD
- Gerenciamento de configuração com Ansible
- Implementação de observabilidade
- Documentação da evolução técnica commit a commit

---

## 🧱 Escopo Inicial

### Infraestrutura
- AWS EC2 (instância única)
- Ubuntu 22.04 LTS
- Kubernetes rodando dentro da EC2 (k3s)

### Aplicação
- Site simples (ex: Nginx, Node.js ou Python)
- Containerizado com Docker
- Deploy via Kubernetes

### CI/CD
- GitHub Actions para:
  - Build da imagem Docker
  - Push para registry
  - Deploy automático no Kubernetes

### Automação
- Ansible para:
  - Configuração da EC2
  - Instalação de dependências
  - Padronização do ambiente

### Observabilidade
- Prometheus
- Grafana
- Métricas da aplicação e do cluster
- Dashboards básicos
- Alertas simples

---

## 🗺️ Arquitetura (Visão Geral)

```
GitHub
└── GitHub Actions (CI)
    ├── Build da imagem Docker
    ├── Push para Registry
    └── Deploy no Kubernetes

AWS
└── EC2
    ├── Docker
    ├── Kubernetes (k3s)
    │   ├── Aplicação
    │   ├── Prometheus
    │   └── Grafana
    └── Ansible
```

---

## 📌 Roadmap do Projeto

### Fase 1 — Infraestrutura Base
- [ ] Criar EC2 na AWS
- [ ] Configurar acesso SSH
- [ ] Hardening básico (firewall, usuários)

### Fase 2 — Container e Kubernetes
- [ ] Instalar Docker
- [ ] Instalar Kubernetes (k3s)
- [ ] Validar cluster com kubectl

### Fase 3 — Aplicação
- [ ] Criar site simples
- [ ] Criar Dockerfile
- [ ] Criar manifests Kubernetes
- [ ] Deploy da aplicação

### Fase 4 — CI/CD
- [ ] Criar pipeline no GitHub Actions
- [ ] Build da imagem Docker
- [ ] Push para registry
- [ ] Deploy automático

### Fase 5 — Ansible
- [ ] Criar inventário
- [ ] Criar playbooks
- [ ] Automatizar setup da EC2

### Fase 6 — Observabilidade
- [ ] Instalar Helm
- [ ] Deploy Prometheus
- [ ] Deploy Grafana
- [ ] Criar dashboards
- [ ] Configurar alertas

---

## 📝 Controle de Progresso por Commit

### 📦 Commit 1 — Escopo Inicial
**O que foi feito:**
- Criação do repositório
- Definição do escopo do laboratório
- Criação do README inicial

**O que falta:**
- Implementação da infraestrutura
- Deploy da aplicação
- Automação e observabilidade

---

## 💰 Controle de Custos

- Utilização de apenas uma EC2
- Evitar serviços gerenciados de alto custo (EKS, RDS, ALB)
- Desligar a instância quando não estiver em uso
- Monitorar billing da AWS

---

## 📚 Tecnologias Utilizadas

- AWS EC2
- Terraform
- Docker
- Kubernetes (k3s)
- GitHub Actions
- Ansible
- Prometheus
- Grafana
- Helm

---

## 🚀 Próximos Passos

- Criar a infraestrutura base na AWS
- Evoluir o README a cada fase
- Adicionar diagramas
- Criar dashboards customizados
- Simular falhas e alertas

---

## 📎 Observações

Este laboratório não tem foco em alta disponibilidade, mas sim em aprendizado prático, integração entre ferramentas e baixo custo, sendo ideal para estudo e portfólio profissional.
