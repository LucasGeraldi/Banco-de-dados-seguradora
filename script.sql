CREATE DATABASE Seguradora 

 

USE Seguradora 

CREATE TABLE cliente ( 

  

CodCliente INT PRIMARY  KEY,  

Nome VARCHAR(46) NOT NULL , 

CPF VARCHAR (46) NOT NULL UNIQUE, 

SEXO VARCHAR (20), 

Estado VARCHAR (45), 

Cidade VARCHAR (45) DEFAULT 'itapira', 

Bairro VARCHAR (45), 

Numero VARCHAR (46), 

Rua VARCHAR (45), 

TelefoneFixo VARCHAR (45), 

TelefoneCelular VARCHAR (45) NOT NULL UNIQUE , 

); 

  

 

USE Seguradora  

CREATE TABLE Carro (  

CodCarro INT PRIMARY  KEY,   

Placa VARCHAR (45) ,  

Marca VARCHAR (45),  

Modelo VARCHAR (45) ,   

Ano VARCHAR (45),  

Chassi VARCHAR (46), 

Cor VARCHAR (45), 

  

); 

 

USE Seguradora  

CREATE TABLE Sinistro (  

CodSinistro INT ,   

HoraSinistro INT ,  

DataSinistro DATE,  

LocalSinistro VARCHAR (45) ,   

Condutor VARCHAR (46),  

Carro_CodCarro INT  , 

PRIMARY KEY (CodSinistro, Carro_CodCarro), 

FOREIGN KEY (Carro_CodCarro) REFERENCES Carro (CodCarro), 

); 

 

USE Seguradora  

CREATE TABLE Apolice (  

CodApolice INT PRIMARY KEY NOT NULL ,   

ValorCobertura DECIMAL  NOT NULL,  

ValorFranquia DECIMAL NOT NULL,  

DataInicioVigencia DATE CHECK (DataInicioVigencia >GETDATE()),   

DataFimVigencia DATE NOT NULL ,   

Cliente_CodCliente INT  NOT NULL , 

Carro_CodCarro INT NOT NULL, 

FOREIGN KEY (Carro_CodCarro) REFERENCES Carro (CodCarro), 

FOREIGN Key (Cliente_CodCliente) REFERENCES Cliente (CodCliente), 

); 