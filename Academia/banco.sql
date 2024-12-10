drop DATABASE panobianco;
create database panobianco;

use panobianco;

create table Clientes (
    id_cliente int primary key auto_increment,
    nome varchar(100),
    idade int
);

create table Treinos (
    id_treino int primary key auto_increment,
    nome varchar(100),
    idData date,
    duracao int,
    tipo varchar(50)

);

create table Inscricoes (
    id_treino int,
    id_cliente int,
    primary key(id_cliente, id_treino),
    FOREIGN KEY (id_treino) references Treinos(id_treino),
    FOREIGN KEY (id_cliente) references Clientes(id_cliente)
    --  FOREIGN KEY => CHAVE ESTRANGEIRA
);

INSERT INTO clientes (nome, idade) VALUES
('Ana Silva', 28),
('Pedro Oliveira', 35),
('Mariana Souza', 42),
('Lucas Lima', 23),
('Carla Santos', 31);

-- Dados para Treinos
INSERT INTO treinos (nome, tipo, duracao, idData ) VALUES
('Treino Cardio 1', 'Cardio', 45, '2024-01-15'),
('Treino Cardio 2', 'Cardio', 60, '2024-02-20'),
('Treino Força 1', 'Força', 50, '2024-03-10'),
('Treino Força 2', 'Força', 70, '2024-04-05'),
('Treino Yoga', 'Flexibilidade', 40, '2024-05-01');

-- Dados para Inscricoes
INSERT INTO Inscricoes (id_cliente, id_treino) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 4),
(3, 5),
(4, 1),
(4, 2),
(4, 3),
(5, 4);