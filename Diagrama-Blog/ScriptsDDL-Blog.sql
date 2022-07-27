-- Alguns comandos de SQL

-- Criar banco de dados
CREATE DATABASE db_blog;

-- Usar o banco de dados
USE db_blog;

-- Criar tabela
CREATE TABLE tb_usuarios(
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Foto VARCHAR(255) NULL
);

CREATE TABLE tb_tema(
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	Descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_postagens(
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	Titulo VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Foto VARCHAR(255) NOT NULL,
	FK_Criador INT NOT NULL,
	FK_Tema INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Tema) REFERENCES tb_tema (Id)
);

-- Adicionar coluna
ALTER TABLE tb_usuarios ADD Cpf VARCHAR(50) NOT NULL;

-- Excluir coluna
ALTER TABLE tb_usuarios DROP COLUMN Cpf;

-- Alterar coluna
ALTER TABLE tb_usuarios ALTER COLUMN Foto VARCHAR(100) NOT NULL;

-- Dropar(Excluir) tabela
DROP TABLE tb_postagens;

-- Dropar(Excluir) banco de dados
DROP DATABASE db_blog;

-- Delete (Usado para deletar a linha da tabela)
