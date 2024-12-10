CREATE DATABASE SistemaDeRodoviaria;
USE SistemaDeRodoviaria;


CREATE TABLE  motorista (
    id_motorista INT AUTO_INCREMENT PRIMARY KEY,
    Nome  VARCHAR(100) NOT NULL,
    sobrenome VARCHAR (100) NOT NULL,
    Telefone VARCHAR(15),
    cnh INT
);
    
 CREATE TABLE onibus (
    id_onibus INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR (100) NOT NULL,
    modelo VARCHAR (15),
    capacidade VARCHAR (15),
    ano_fabricacao VARCHAR (20)
 );

 CREATE TABLE viagem (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    data_viagem DATE,
    origemDestino VARCHAR (20),
    horarioSaida TIME,
    horarioChegada TIME
 );

 INSERT INTO motorista (Nome, sobrenome, Telefone, cnh) VALUES
 ('Joao', 'da Silva', '1234-5678', '73596797996' ),
 ('Maria', 'Oliveira', '8765-4321', '20018109093'),
 ('Carlos', 'Souza', '2345-6789', '38644361550');
 


 INSERT INTO onibus (placa, modelo, capacidade,ano_fabricacao) VALUES
 ('NCY-4505', 'VW', '57', '1993'),
 ('HVB-0142', 'AGRALE', '30','1996'),
 ('MNS-7114', 'MARCOPOLO', '60','1949');
 


 INSERT INTO viagem (id_motorista,id_onibus,data_viagem,horarioChegada,horarioSaida, origemDestino) VALUES
 (1,1, '2024-08-25', '07:30:00','10:30:00','Jaguariuna'),
 (2,2, '2024-08-26','09:15:00','13:15:20','Campinas'),
 (3,3, '2024-08-27', '13:23:00','15:40:00','Pedreira');
 

 