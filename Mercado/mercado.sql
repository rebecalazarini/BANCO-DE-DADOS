DROP DATABASE IF EXISTS mercado;
CREATE DATABASE IF NOT EXISTS mercado;
USE mercado;

CREATE TABLE clientes(
    id_cli  INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    email VARCHAR(80) NOT NULL UNIQUE,
    telefone VARCHAR(19) NOT NULL   
);

CREATE TABLE produtos(
    id_prod INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(30) NOT NULL UNIQUE,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE vendas (
    id_vend INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_cli INT(10),
    data_venda DATE NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL, 
    FOREIGN KEY (id_cli) REFERENCES clientes(id_cli)
);

CREATE TABLE itensVenda (
    id_item int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_vend INT(10),  
    id_prod INT(10), 
    qtd INT NOT NULL, 
    preco_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_vend) REFERENCES vendas(id_vend),
    FOREIGN KEY (id_prod) REFERENCES produtos(id_prod)

);

INSERT INTO clientes (nome, cpf, email, telefone) 
VALUES 
('Evelyn Fernandes', '12345678901', 'EvelynFer@email.com', '(19) 91234-5678'),
('larissa Santos', '98765432100', 'LariSantos@email.com', '(35) 99876-9932'),
('Cris Leopoldo', '12345987654', 'leopoldocris@email.com', '(31) 93236-7890');


INSERT INTO produtos (nome, descricao, preco, estoque) 
VALUES 
('Leite Condensado', 'Leite Condensado em lata', 9.99, 50),
('Banana', 'Banana Nanica', 5.50, 30),
('Pepino', 'Pepino Europeu em conserva', 7.99, 20);


INSERT INTO vendas (id_cli, data_venda, valor_total)
VALUES 
(1, '2024-12-07', 9.99),  
(2, '2024-12-11', 11.00), 
(3, '2024-12-08', 15.98); 


INSERT INTO itensVenda (id_vend, id_prod, qtd, preco_unitario)
VALUES 
(1, 1, 1, 9.99),  
(1, 3, 2, 11.00),  
(2, 2, 2, 15.98),  
(3, 1, 2, 19.98);  
  


