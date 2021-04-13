use marketplace_blue;
CREATE TABLE idiomas (
	id int unsigned primary key not null auto_increment,
    sigla varchar(4) not null,
    nome varchar(255) not null
);
CREATE TABLE paises (
	id int unsigned primary key not null auto_increment,
    id_idioma int null,
    sigla varchar(4) not null,
    nome varchar(255) not null
);
CREATE TABLE estados(
	id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_pais INT UNSIGNED NULL,
    sigla varchar(4) not null,
    nome varchar(255) not null,
    codigo_ibge INT UNSIGNED NULL
);
CREATE TABLE cidades(
	id int unsigned primary key not null auto_increment,
    id_estado int null,
    nome varchar(255) not null,
    codigo_ibge INT UNSIGNED NULL
);
CREATE TABLE bairro(
	id int unsigned primary key not null auto_increment,
    id_cidade int unsigned null,
    nome varchar(255) not null
    );

CREATE TABLE ruas(
	id int unsigned primary key not null auto_increment,
    id_bairros int unsigned null,
    nome varchar(255) not null,
    cep varchar(8) not null,
    tipo varchar(255) not null
);