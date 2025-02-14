# Maceió IN

O **Maceió IN** é uma aplicação web desenvolvida com Ruby on Rails que permite aos usuários gerenciar os funcionários a partir de um simples CRUD. Também é possível visualizar informações básicas sobre a Secretária da Fazenda de Maceió (SEFAZ-AL).


# Instalação

### Pré-requisitos:

Certifique-se de ter as seguintes ferramentas instaladas: 
- [Ruby](https://www.ruby-lang.org/en/downloads/) (versão 3.1.0)
- [Rails](https://rubyonrails.org/) (versão 7.1.5.1) 
- [MySQL](https://www.mysql.com/downloads/)

### Passos de Instalação:

- Passo 1:  Clone o repositório:

```git clone https://github.com/SammaraIngrid/maceio-in.git```
```cd maceio-in```

- Passo 2:  Instale as dependências do projeto:

```bundle install```

- Passo 3: Instale o Rails com a versão do projeto:

```gem install rails```

- Passo 4: Instale o yarn:

```npm install yarn```

- Passo 5: Instale as dependências do frontend:

```yarn install && rails assets:precompile```

- Passo 6:  Configure o banco de dados:

```rails db:create && rails db:migrate && rails db:seed```

##  Uso

1. Rode o servidor: ```rails s```  ou ```rails server```;
2. Acesse `http://localhost:3000`;
3. Acesse com as credenciais:
```
admin@gmail.com
123456
```
