CREATE DATABASE OficinaAutomotiva;

USE OficinaAutomotiva;

CREATE TABLE Cliente (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Endereco VARCHAR(255),
    Telefone VARCHAR(15)
);


CREATE TABLE Carro (
    ID INT PRIMARY KEY,
    Modelo VARCHAR(255),
    Ano INT,
    Placa VARCHAR(10),
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ID)
);


CREATE TABLE Servico (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Preco DECIMAL(10, 2)
);


CREATE TABLE Funcionario (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Cargo VARCHAR(50)
);


CREATE TABLE Carro_Servico (
    CarroID INT,
    ServicoID INT,
    FOREIGN KEY (CarroID) REFERENCES Carro(ID),
    FOREIGN KEY (ServicoID) REFERENCES Servico(ID)
);


INSERT INTO Cliente (ID, Nome, Endereco, Telefone) VALUES (1, 'João Silva', 'Rua A, 123', '(11) 1234-5678');


INSERT INTO Carro (ID, Modelo, Ano, Placa, ClienteID) VALUES (1, 'Ford Focus', 2020, 'ABC123', 1);


INSERT INTO Servico (ID, Nome, Preco) VALUES (1, 'Troca de óleo', 100.00);


INSERT INTO Funcionario (ID, Nome, Cargo) VALUES (1, 'Maria Santos', 'Mecânico');


INSERT INTO Carro_Servico (CarroID, ServicoID) VALUES (1, 1);
