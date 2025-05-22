# 🛒 Projeto de Banco de Dados - E-commerce

Este projeto consiste no design e implementação de um banco de dados relacional para um sistema de E-commerce. O objetivo é fornecer uma base robusta e escalável para operações comuns como cadastro de produtos, gerenciamento de clientes, pedidos, pagamentos e mais.

---

## 📌 Funcionalidades do Banco de Dados

- Cadastro e autenticação de usuários
- Gerenciamento de produtos e categorias
- Processamento de pedidos e pagamentos
- Controle de estoque
- Avaliações de produtos pelos clientes
- Relatórios de vendas

---

## 🧱 Modelo de Dados

### Principais Tabelas

- **cliente** – Dados de clientes cadastrados.
- **produto** – Catálogo de produtos.
- **pedido** – Pedidos realizados pelos clientes.
- **pagamento** – Informações de pagamento dos pedidos.
- **entrega** – Dados de entrega como data e código de rastreio.
- **estoque** – Controle da quantidade de produtos disponíveis.
- **fornecedor** – Informações sobre fornecedores de produtos.
- **vendedor** – Dados de vendedores parceiros (marketplace).

### Diagrama ER (Entity-Relationship)

> ![MODELO_ER_ECOMMERCE_DESAFIO_GIT](https://github.com/user-attachments/assets/5989e705-2213-4cc0-8582-abde14bed4cc)


---

## ⚙️ Tecnologias Utilizadas

- **MySQL / PostgreSQL** (compatível com ambos)
- **SQL puro** (DDL e DML)
- Ferramentas recomendadas: MySQL Workbench

---

## 🚀 Como Executar

1. **Clone o repositório**
   ```bash
   git clone https://github.com/seuusuario/projeto-ecommerce-db.git
   cd projeto-ecommerce-db
