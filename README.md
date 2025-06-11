# travelapp-database

Banco de dados do app de fotos e viagens.  
Organizado com MySQL, separado por schema, updates e dados iniciais.

Este repositório contém a estrutura de banco de dados para o app **TravelApp**, que permite o envio e visualização de fotos de diferentes locais ao redor do mundo. O banco de dados é construído em **MySQL** e organizado de forma modular para facilitar a evolução e manutenção.

## Estrutura do projeto

A estrutura do banco de dados está organizada da seguinte forma:

### 🗂️ **Pastas principais**

- **`schema/`**: Scripts para criação inicial do banco de dados (DDL). Contém os scripts que definem a estrutura básica das tabelas.
- **`updates/`**: Scripts para alterar a estrutura do banco de dados após a criação inicial (como `ALTER TABLE`, `ADD COLUMN`, etc.). Usado para evolução do banco durante o desenvolvimento.
- **`data/`**: Scripts com dados iniciais para testes ou demonstração do app, como usuários mockados e fotos de exemplo.
- **`backups/`**: Contém dumps e backups do banco de dados. Não deve ser versionado no Git.

### 📝 **Scripts e arquivos**

- **`schema/000_create_database.sql`**: Criação do schema (banco de dados) inicial.
- **`schema/001_create_users.sql`**: Criação da tabela de usuários.
- **`schema/002_create_photos.sql`**: Criação da tabela de fotos.
- **`schema/003_create_cities.sql`**: Criação da tabela de cidades.
- **`updates/2025_07_01_add_profile_picture_to_users.sql`**: Exemplo de atualização de schema (alteração na tabela `users`).
- **`data/001_insert_mock_users.sql`**: Dados de exemplo para popular a tabela de usuários.
- **`data/002_insert_paris_photos.sql`**: Dados de exemplo para popular a tabela de fotos com imagens de Paris.

### ⚙️ **Como configurar o banco de dados**

#### 1. **Criar o banco de dados**
Execute o script `schema/000_create_database.sql` para criar o banco de dados `travelapp`.

```bash
mysql -u root -p < schema/000_create_database.sql
