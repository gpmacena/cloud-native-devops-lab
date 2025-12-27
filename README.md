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
- Provisionamento em AWS com foco em baixo custo
- Kubernetes em ambiente single-node (k3s)
- CI/CD com GitHub Actions
- Automação e configuração com Ansible
- Observabilidade com Prometheus e Grafana
- Evolução documentada commit a commit

---

## 🧱 Escopo Inicial

### ☁️ Infraestrutura
- AWS EC2 (instância única)
- VPC customizada com subnet pública
- Ubuntu 22.04 LTS
- Arquitetura simplificada para laboratório

### ⚙️ Plataforma
- Docker
- Kubernetes (k3s)

### 📦 Aplicação
- Aplicação simples (ex: Nginx, Node.js ou Python)
- Containerizada com Docker
- Deploy via Kubernetes

### 🔄 CI/CD
- GitHub Actions para build, push e deploy

### 🛠️ Automação
- Ansible para configuração da EC2 e do cluster

### 📊 Observabilidade
- Prometheus
- Grafana

---

## 🗺️ Arquitetura — Visão Geral

GitHub  
└── GitHub Actions (CI)  
&nbsp;&nbsp;&nbsp;&nbsp;├── Build da imagem Docker  
&nbsp;&nbsp;&nbsp;&nbsp;├── Push para Registry  
&nbsp;&nbsp;&nbsp;&nbsp;└── Deploy no Kubernetes  

AWS  
└── EC2  
&nbsp;&nbsp;&nbsp;&nbsp;├── Docker  
&nbsp;&nbsp;&nbsp;&nbsp;├── Kubernetes (k3s)  
&nbsp;&nbsp;&nbsp;&nbsp;│   ├── Aplicação  
&nbsp;&nbsp;&nbsp;&nbsp;│   ├── Prometheus  
&nbsp;&nbsp;&nbsp;&nbsp;│   └── Grafana  
&nbsp;&nbsp;&nbsp;&nbsp;└── Ansible  

---

## 📌 Roadmap do Projeto

### Fase 1 — Infraestrutura Base
- [x] Estrutura inicial do projeto
- [x] Terraform modularizado
- [ ] Provisionar EC2
- [ ] Testar acesso SSH e HTTP

### Fase 2 — Container e Kubernetes
- [ ] Instalar Docker
- [ ] Instalar Kubernetes (k3s)
- [ ] Validar cluster

### Fase 3 — Aplicação
- [ ] Criar aplicação simples
- [ ] Criar Dockerfile
- [ ] Deploy no Kubernetes

### Fase 4 — CI/CD
- [ ] Criar pipeline no GitHub Actions
- [ ] Build e push da imagem
- [ ] Deploy automático

### Fase 5 — Observabilidade
- [ ] Deploy Prometheus
- [ ] Deploy Grafana
- [ ] Dashboards e alertas

---

## 💰 Controle de Custos

- Apenas uma EC2
- Sem serviços gerenciados caros
- Ideal para desligar quando não estiver em uso

---

## 📚 Tecnologias Utilizadas

- AWS
- Terraform
- Docker
- Kubernetes (k3s)
- GitHub Actions
- Ansible
- Prometheus
- Grafana

---

## 📎 Observações Finais

Projeto focado em aprendizado prático, integração entre ferramentas e construção de portfólio profissional.
