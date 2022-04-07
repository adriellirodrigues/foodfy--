<h1 align="center" >
    <img alt="Logo Foodfy" src="https://raw.githubusercontent.com/Rocketseat/bootcamp-launchbase-desafios-02/master/layouts/assets/logo.png" />
</h1>

<h3 align="center">
    🍽 The best recipes.
</h3>

<p align="center">
  <img alt="GitHub contagem de linguagens" src="https://img.shields.io/github/languages/count/grioos/foodfy?color=%2304D361&style=flat-square">

  <img alt="Tamanho do repositório" src="https://img.shields.io/github/repo-size/grioos/foodfy?style=flat-square">

  <a href="https://github.com/grioos/README-proffy/commits/master">
    <img alt="GitHub último commit" src="https://img.shields.io/github/last-commit/grioos/foodfy?style=flat-square">
  </a>
    
   <img alt="License" src="https://img.shields.io/badge/license-MIT-8622f8?style=flat-square">
   
   <a href="https://github.com/grioos/foodfy/stargazers">
    <img alt="Stargazers" src="https://img.shields.io/github/stars/grioos/foodfy?style=social">
  </a>

</p>

<h1 align="center">
    <img alt="Home Page" src="/.github/screenshots/banner.png" />
</h1>

<h4 align="center"> 
	🚧  Foodfy 🍽  🚀 🚧
</h4>

<p align="center">
  <a href="#-sobre-o-projeto">Sobre</a> •
  <a href="#-funcionalidades">Funcionalidades</a> •
  <a href="#-como-executar-o-projeto">Como executar</a> • 
  <a href="#-tecnologias">Tecnologias</a> • 
  <a href="#-autor">Autor</a> • 
  <a href="#user-content--licença">Licença</a>
</p>


## 💻 Sobre o projeto

📺 Foodfy - Aprenda a construir os melhores pratos com receitas criadas por profissionais do mundo inteiro.

Projeto desenvolvido durante o **Bootcamp Launchbase** oferecido pela [Rocketseat](https://rocketseat.com.br/).

---

## ⚙️ Funcionalidades

🚧  Em construção...  🚧

---

## 🚀 Como executar o projeto

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
[Git](https://git-scm.com), [Node.js](https://nodejs.org/en/). 
Além disto ter um editor para trabalhar com o código como [VSCode](https://code.visualstudio.com/)

#### 🧭 Rodando a aplicação

1. Clone este repositório

	```bash
	git clone https://github.com/adriellirodrigues/foodfy-
	```

2. Acesse a pasta do projeto no seu *vscode*

	```bash
	cd foodfy
	```

3. Instale as dependências

	```bash
	npm install
	```

4. Configure o Banco de dados (*PostgreSQL*) executando os comandos presente no arquivo *database.sql*.

	```bash
	CREATE TABLE "" (
	    "id" SERIAL PRIMARY KEY,
	    "name" TEXT,
	    "number" int NOT NULL
	);
	```

5. Popule o banco de dados com o arquivo *database.sql* na raíz do projeto.

	
6. Execute a aplicação 

	```bash
	npm start
	```

*A aplicação será aberta na porta:3000 - acesse http://localhost:3000*



#### 📌 Importante

- Vá para a pasta *src/config* e configure o arquivo *db.js* **colocando seu usuário e senha** de conexão com o *PostgreSQL*.

---

## 🛠 Tecnologias

As seguintes ferramentas foram usadas na construção do projeto:
-   **[Express](https://expressjs.com/)**
-   **[Method Override](https://www.npmjs.com/package/method-override)**
-   **[NodeJS](https://nodejs.org/en/)**
-   **[Node Postgres](https://github.com/brianc/node-postgres)**
-   **[Nunjucks](https://github.com/mozilla/nunjucks)**
-   **[JavaScript](https://www.javascript.com/)**
-   **[Nodemon](https://www.npmjs.com/package/nodemon)**
-   **[Npm Run All](https://www.npmjs.com/package/npm-run-all)**

---

## 💪 Como contribuir para o projeto

1. Faça um **fork** do projeto.
2. Crie uma nova branch com as suas alterações: `git checkout -b my-feature`
3. Salve as alterações e crie uma mensagem de commit contando o que você fez: `git commit -m "feature: My new feature"`
4. Envie as suas alterações: `git push origin my-feature`

---
