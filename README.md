# travelapp-database

Banco de dados do app de fotos e viagens.  
Organizado com PostgreSQL, separado pelas pastas schema, updates, data (que é onde vao ficar os dados iniciais) e backup.

Nao sera necessario script sql para criacao de schema, apenas criacao de database e depois as criacoes das tabelas diretamente, pois as tabelas no PostgreSQL sao criadas por default dentro do schema public, que tambem é default.

Este repositório contém a estrutura de banco de dados para o app **TravelApp**, que permite o envio e visualização de fotos de diferentes locais ao redor do mundo. O banco de dados é construído em **PostgreSQL** e organizado de forma modular para facilitar a evolução e manutenção.

## Estrutura do projeto

A estrutura do banco de dados está organizada da seguinte forma:


## ###############################################################

travelapp-database/  
___ schema/  
____________ 001_create_database.sql  
____________ 002_create_users.sql  
____________ 003_create_photos.sql  
____________ 004_create_cities.sql  
___ updates/  
____________ 2025_07_01_add_profile_picture_to_users.sql  
___ data/  
____________ 001_insert_mock_users.sql  
___ backups/  
___ .gitignore  
___ README.md  

## ###############################################################

Descricao de cada pasta:

schema:                        # Scripts para criação inicial do banco de dados (DDL). Contém os scripts que definem a estrutura básica das tabelas.  

updates:                       # Scripts de alterações no banco após a criação inicial (como `ALTER TABLE`, `ADD COLUMN`, etc.). Usado para evolução do banco durante o desenvolvimento.  

data:                          # Scripts com dados iniciais para testes ou demonstração do app, como usuários mockados e fotos de exemplo.  

backups:                       # Contém dumps e backups do banco de dados. Não deve ser versionado no Git.  

## ###############################################################

.gitignore                     # Ignora arquivos temporários, como backups locais
README.md                      # Documentação do projeto

## ###############################################################


### 📝 ** Exemplos de scripts e arquivos**

- **`schema/001_create_database.sql`**: Criação da base de dados
- **`schema/002_create_users.sql`**: Criação da tabela de usuários.
- **`schema/003_create_photos.sql`**: Criação da tabela de fotos.
- **`schema/004_create_cities.sql`**: Criação da tabela de cidades.
- **`updates/2025_07_01_add_profile_picture_to_users.sql`**: Exemplo de atualização de schema (alteração na tabela `users`).
- **`data/001_insert_mock_users.sql`**: Dados de exemplo para popular a tabela de usuários.
- **`data/002_insert_paris_photos.sql`**: Dados de exemplo para popular a tabela de fotos com imagens de Paris.

## ###############################################################
