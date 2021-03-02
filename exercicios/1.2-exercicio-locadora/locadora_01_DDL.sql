--DDL
CREATE DATABASE Locadora;

USE Locadora;

CREATE TABLE Empresas
(
	idEmpresa INT PRIMARY KEY IDENTITY
	,NomeEmpresa VARCHAR(30) NOT NULL
);
CREATE TABLE Clientes
(
	idCliente INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(50) NOT NULL
	,CPF INT NOT NULL
);
CREATE TABLE Marcas
(
	idMarca INT PRIMARY KEY IDENTITY
	,NomeMarca VARCHAR(50) NOT NULL
);
CREATE TABLE Modelos
(
	idModelo INT PRIMARY KEY IDENTITY
	,Descricao VARCHAR(100) NOT NULL
	,idMarca INT FOREIGN KEY REFERENCES Marcas(idMarca)
);
CREATE TABLE Veiculos
(
	idVeiculo INT PRIMARY KEY IDENTITY
	,idModelo INT FOREIGN KEY REFERENCES Modelos (idModelo) 
	,Placa VARCHAR (6) NOT NULL
	,idEmpresa INT FOREIGN KEY REFERENCES Empresas (idEmpresa)
);
CREATE TABLE Alugueis
(
	idAluguel INT PRIMARY KEY IDENTITY
	,idCliente INT FOREIGN KEY REFERENCES Clientes (idCliente)
	,idVeiculo INT FOREIGN KEY REFERENCES Veiculos (idVeiculo)
	,DataInicio DATETIME NOT NULL
	,DataTermino DATETIME NOT NULL
)