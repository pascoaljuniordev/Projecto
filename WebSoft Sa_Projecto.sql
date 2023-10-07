CREATE DATABASE websoft_sa;
use websoft_sa;

CREATE TABLE departamento(
	especialidade VARCHAR(50) PRIMARY KEY,
    nome VARCHAR(30) UNIQUE NOT NULL,
    numero_funcionarios INT NOT NULL
);

CREATE TABLE projecto (
	id INTEGER PRIMARY KEY,
    nome VARCHAR(30) NOT NULL UNIQUE,
    empresa VARCHAR(40) NOT NULL,
    plataforma_desenvolvimento VARCHAR(60) NOT NULL,
    valor_base double NOT NULL,
    especialidade_departamento VARCHAR(50) NOT NULL,
    FOREIGN KEY(especialidade_departamento) REFERENCES departamento(especialidade)
);

CREATE TABLE funcionario(
	id INTEGER PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(70),
    especialidade_departamento VARCHAR(50) NOT NULL,
    id_projecto INTEGER NOT NULL,
    FOREIGN KEY(especialidade_departamento) REFERENCES departamento(especialidade),
    FOREIGN KEY(id_projecto) REFERENCES projecto(id)
);

CREATE TABLE funcionario_celular(
	id_funcionario INTEGER,
    telefone VARCHAR(30),
    PRIMARY KEY(id_funcionario, telefone),
    FOREIGN KEY(id_funcionario) REFERENCES funcionario(id)
);

CREATE TABLE cliente(
	id INTEGER PRIMARY KEY
);

CREATE TABLE cliente_celular(
	id_cliente INTEGER NOT NULL,
    celular VARCHAR(30) NOT NULL,
    PRIMARY KEY(id_cliente, celular),
    FOREIGN KEY(id_cliente) REFERENCES cliente(id)
);

CREATE TABLE cliente_projecto(
	id_cliente INTEGER,
    id_projecto INTEGER,
    data_conclusao DATE NOT NULL,
    PRIMARY KEY(id_cliente, id_projecto),
    FOREIGN KEY(id_cliente) REFERENCES cliente(id),
    FOREIGN KEY(id_projecto) REFERENCES projecto(id)
);

drop table gerente;
CREATE TABLE gerente(
	id_funcionario INTEGER,
	anos_experiencia INT NOT NULL,
    grau_academico TEXT NOT NULL,
    universidade VARCHAR(30) NOT NULL,
    ano_graduacao YEAR NOT NULL,
    projectos_liderados INT NOT NULL,
    FOREIGN KEY(id_funcionario) REFERENCES funcionario(id)
);

drop table analista;
CREATE TABLE analista(
	id_funcionario INTEGER,
	anos_experiencia INT NOT NULL,
    grau_academico TEXT NOT NULL,
    universidade VARCHAR(30) NOT NULL,
    ano_graduacao YEAR NOT NULL,
    metodologia VARCHAR(40) NOT NULL,
    software_projecto VARCHAR(30) NOT NULL,
    classes_projectadas TEXT NOT NULL,
    FOREIGN KEY(id_funcionario) REFERENCES funcionario(id)
);

drop table programadores;
CREATE TABLE programadores(
	id_funcionario INTEGER,
	plataforma_especializado VARCHAR(50) NOT NULL,
	linhas_codigo int NOT NULL,
	computacao_grafica enum('Sim', 'Não'),
	FOREIGN KEY(id_funcionario) REFERENCES funcionario(id)
);

show tables;
desc analista;