-- Criação do banco de dados
DROP DATABASE hotel_db;
CREATE DATABASE hotel_db;
USE hotel_db;

-- Tabela Clientes
CREATE TABLE Clientes (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15)
);

-- Tabela Quartos
CREATE TABLE Quartos (
    quarto_id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    status VARCHAR(15) NOT NULL CHECK (status IN ('Disponivel', 'Ocupado'))
);

-- Tabela Reservas
CREATE TABLE Reservas (
    reserva_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    quarto_id INT NOT NULL,
    data_checkin DATE NOT NULL,
    data_checkout DATE NOT NULL
    
);

-- Tabela Funcionarios
CREATE TABLE Funcionarios (
    funcionario_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL
);

-- Tabela Servicos
CREATE TABLE Servicos (
    servico_id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

-- Tabela Pagamentos
CREATE TABLE Pagamentos (
    pagamento_id INT AUTO_INCREMENT PRIMARY KEY,
    reserva_id INT NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    data_pagamento DATE NOT NULL,
    metodo_pagamento VARCHAR(50) NOT NULL
);

INSERT INTO Clientes (nome, email, telefone) VALUES 
('Maria Silva', 'maria.silva@example.com', '11987654321'),
('Joao Pereira', 'joao.pereira@example.com', '11912345678'),
('Ana Costa', 'ana.costa@example.com', '11876543210'),
('Lucas Almeida', 'lucas.almeida@example.com', '11765432100'),
('Fernanda Lima', 'fernanda.lima@example.com', '11654321098'),
('Carlos Sousa', 'carlos.sousa@example.com', '11543210987'),
('Juliana Rocha', 'juliana.rocha@example.com', '11432109876'),
('Roberto Santos', 'roberto.santos@example.com', '11321098765'),
('Patricia Gomes', 'patricia.gomes@example.com', '11210987654'),
('Felipe Martins', 'felipe.martins@example.com', '11109876543');

INSERT INTO Quartos (tipo, preco, status) VALUES 
('Standard', 150.00, 'Disponivel'),
('Deluxe', 250.00, 'Disponivel'),
('Suite', 400.00, 'Ocupado'),
('Standard', 150.00, 'Ocupado'),
('Deluxe', 250.00, 'Disponivel'),
('Suite', 400.00, 'Disponivel'),
('Standard', 150.00, 'Disponivel'),
('Deluxe', 250.00, 'Ocupado'),
('Suite', 400.00, 'Disponivel'),
('Standard', 150.00, 'Ocupado');

INSERT INTO Reservas (cliente_id, quarto_id, data_checkin, data_checkout) VALUES 
(1, 1, '2024-10-01', '2024-10-05'),
(2, 2, '2024-10-03', '2024-10-07'),
(3, 3, '2024-10-02', '2024-10-06'),
(4, 4, '2024-10-04', '2024-10-08'),
(5, 5, '2024-10-05', '2024-10-10'),
(6, 6, '2024-10-01', '2024-10-03'),
(7, 7, '2024-10-06', '2024-10-09'),
(8, 8, '2024-10-02', '2024-10-04'),
(9, 9, '2024-10-07', '2024-10-11'),
(10, 10, '2024-10-01', '2024-10-02');

INSERT INTO Funcionarios (nome, cargo, salario) VALUES 
('Ana Souza', 'Recepcionista', 2500.00),
('Ricardo Lima', 'Gerente', 5000.00),
('Juliana Mendes', 'Cozinheira', 3000.00),
('Carlos Teixeira', 'Garcom', 2000.00),
('Fernanda Martins', 'Camareira', 1500.00),
('Pedro Henrique', 'Seguranca', 2800.00),
('Mariana Dias', 'Assistente de Limpeza', 1300.00),
('Lucas Rocha', 'Recepcionista', 2500.00),
('Tatiane Ferreira', 'Gerente de Vendas', 4500.00),
('Gustavo Silva', 'Manutencao', 3000.00);

INSERT INTO Servicos (descricao, preco) VALUES 
('Wi-Fi', 15.00),
('Estacionamento', 20.00),
('Cafe da Manha', 30.00),
('Servico de Quarto', 25.00),
('Lavanderia', 40.00),
('Transporte Aeroporto', 100.00),
('Massagem', 120.00),
('Excursao Local', 50.00),
('Aluguel de Bicicleta', 15.00),
('Bar na Piscina', 10.00);

INSERT INTO Pagamentos (reserva_id, valor, data_pagamento, metodo_pagamento) VALUES 
(1, 600.00, '2024-10-01', 'Cartao de Credito'),
(2, 1000.00, '2024-10-03', 'Dinheiro'),
(3, 1200.00, '2024-10-02', 'Cartao de Debito'),
(4, 800.00, '2024-10-04', 'Transferencia'),
(5, 1500.00, '2024-10-05', 'Cartao de Credito'),
(6, 450.00, '2024-10-01', 'Dinheiro'),
(7, 900.00, '2024-10-06', 'Cartao de Debito'),
(8, 500.00, '2024-10-02', 'Transferrncia'),
(9, 1100.00, '2024-10-07', 'Cartao de Credito'),
(10, 300.00, '2024-10-01', 'Dinheiro');
