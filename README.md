# 🛒 Melhores Compras - Sistema de Cadastro de Fornecedores

Bem-vindo ao repositório do sistema **Melhores Compras**, uma solução desenvolvida para automatizar e organizar o cadastro de fornecedores e seus respectivos produtos em um marketplace B2B. Este projeto simula um ambiente real de negócios com foco em organização, usabilidade e boas práticas de dados.

---

## 📌 Visão Geral

> O sistema é dividido em **3 camadas principais**:
- 🐍 **Python**: Interface no terminal para cadastro de produtos e geração de arquivo JSON.
- 🗄️ **SQL**: Scripts para criação, manipulação e consulta de dados no banco relacional.
- 🌱 **ESG**: Documentação sobre como o projeto aborda temas de sustentabilidade e governança.

---

## 🧠 Tecnologias Utilizadas

| Tecnologia | Descrição |
|------------|-----------|
| Python 3.10+ | Script principal e lógica de negócios |
| Colorama | Interface colorida no terminal |
| JSON | Armazenamento estruturado dos produtos |
| SQL (Oracle Compatível) | Scripts DML/DQL e modelagem do banco |
| Git + GitHub | Versionamento e colaboração |

---

## 🛠️ Funcionalidades Python

- 📝 Cadastro de produtos com nome, descrição, preço e embalagem
- 🧮 Cálculo automático de ICMS (18%)
- 📄 Geração de arquivo JSON com todos os produtos
- 🎨 Interface interativa e colorida via terminal
- 🔒 Validações de entrada e tratamento de erros

---

## 🗃️ Scripts SQL

- `DML.sql`: Comandos para inserir, atualizar e remover produtos no banco.
- `DQL.sql`: Consultas analíticas dos dados cadastrados.
- `Cria.sql` & `dados.sql`: Criação do banco e popular dados iniciais.
- `Apaga.sql`: Limpeza das estruturas de dados.

---

## ♻️ ESG - Compromisso com Boas Práticas

O projeto contempla o modelo ESG (Environmental, Social and Governance) com foco em:

- 🌱 Sustentabilidade e controle de embalagens
- 🤝 Incentivo à inclusão de pequenos fornecedores
- 🧾 Transparência no cadastro e precificação dos produtos

Leia mais no arquivo [`ESG.md`](./ESG.md).


---

## 🗂️ Estrutura do Projeto

```bash
📁 Melhores_Compras
├── Python/
│   ├── cadastro.py        # Funções de coleta e exibição de dados
│   └── executavel.py      # Script principal com fluxo do sistema
│
├── SQL/
│   ├── File--DML--(Data_Modeling_L.)/
│   │   └── DML.sql        # Comandos INSERT, UPDATE, DELETE
│   └── File--DQL--(Data_Query_L.)/
│       └── DQL.sql        # Comandos SELECT para análise de dados
│
├── Offical_Arquivos_MC_DataBase/
│   ├── Cria.sql           # Criação do banco e tabelas
│   ├── Apaga.sql          # Script para apagar estruturas
│   └── dados.sql          # Inserções iniciais
│
├── ESG.md                 # Boas práticas ambientais, sociais e de governança
├── .gitignore             # Ignora arquivos/pastas sensíveis
└── README.md              # Este arquivo
```












