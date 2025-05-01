# 🚀 Terraform AWS Multi-Ambiente: VPC, EC2 & ALB

Infraestrutura automatizada, modular e segura para ambientes **dev**, **staging** e **prod** na AWS, utilizando Terraform.

---

## 🏗️ Visão Geral

- **Ambientes isolados:** dev, staging e prod
- **Recursos:** VPC, Subnets, EC2, Application Load Balancer (ALB)
- **Segurança:** AWS Secrets Manager, Security Groups, criptografia e IAM

---

## 📁 Estrutura do Projeto

terraform-ec2-vpc-alb/
├── modules/
│ ├── vpc/
│ ├── ec2/
│ └── alb/
├── environments/
│ ├── dev/
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ ├── outputs.tf
│ │ └── dev.tfvars
│ ├── staging/
│ └── prod/
└── README.md

---

## ⚡ Como Começar

### 1️⃣ Clone o repositório

git clone https://github.com/LeonardoCosta90/terraform-ec2-vpc-alb.git
cd terraform-ec2-vpc-alb

### 2️⃣ Inicialize o Terraform

terraform init

### 3️⃣ Configure seu perfil AWS (SSO)

export AWS_PROFILE=seu-perfil-sso

### 4️⃣ Aplique a configuração do ambiente desejado

cd environments/dev
terraform apply -var-file=dev.tfvars

> Troque `dev` por `staging` ou `prod` para outros ambientes.

---

## ⚙️ Personalização por Ambiente

Cada ambiente possui seu próprio arquivo `.tfvars` e configurações customizáveis, como:

- Tipo e quantidade de instâncias EC2
- CIDR das sub-redes
- Tags e variáveis de ambiente
- Regras de segurança

**Exemplo (`dev.tfvars`):**
instance_type = "t3.micro"
min_size = 1
max_size = 1
environment = "dev"

---

## 🔒 Segurança

- **Secrets Manager:** Gerencie variáveis sensíveis, como senhas e chaves.
- **Security Groups:** Acesso restrito e controlado.
- **Criptografia:** Volumes EBS e dados em trânsito.
- **IAM:** Privilégios mínimos e segregação por ambiente.

---

## 🧹 Limpeza

Para destruir a infraestrutura de um ambiente:

terraform destroy -var-file=dev.tfvars

text

---

## 📚 Documentação dos Módulos

### VPC

Cria VPC, sub-redes públicas/privadas, gateway de internet e rotas.

### EC2

Provisiona instâncias EC2 nas sub-redes privadas.

### ALB

Cria Application Load Balancer, Target Group e Listener.

---

## 💡 Boas Práticas

- **Modularização:** Reutilize código via módulos.
- **Segurança:** Nunca exponha segredos no código.
- **Gestão de estado:** Use backend remoto (S3/DynamoDB).
- **Auditoria:** Ative CloudTrail e monitore logs.

---

## 🤝 Contribua

1. Faça um fork
2. Crie uma branch (`git checkout -b feature/nova-feature`)
3. Commit (`git commit -am 'feat: nova feature'`)
4. Push (`git push origin feature/nova-feature`)
5. Abra um Pull Request

---

## 📄 Licença

Distribuído sob a licença MIT. Veja o arquivo [LICENSE](LICENSE).

---
