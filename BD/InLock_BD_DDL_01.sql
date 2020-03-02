﻿CREATE DATABASE InLock_Games_Manha;
​
USE InLock_Games_Manha;
​
CREATE TABLE Estudio(
IdEstudio INT PRIMARY KEY IDENTITY,
NomeEstudio VARCHAR(255) NOT NULL
);
​
CREATE TABLE Jogos(
IdJogo INT PRIMARY KEY IDENTITY,
NomeJogo VARCHAR(255) NOT NULL,
Descricao VARCHAR(255) NOT NULL,
DataLancamento DATE NOT NULL,
Valor DECIMAL (5,2) NOT NULL,
IdEstudio INT FOREIGN KEY REFERENCES Estudio (IdEstudio)
);
​
CREATE TABLE TipoUsuarios(
IdTipoUsuario INT PRIMARY KEY IDENTITY,
Titulo VARCHAR(255) NOT NULL
);
​
CREATE TABLE Usuarios(
IUsuario INT PRIMARY KEY IDENTITY,
Email VARCHAR(255) NOT NULL,
Senha VARCHAR(255) NOT NULL,
IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuarios (IdTipoUsuario)
);