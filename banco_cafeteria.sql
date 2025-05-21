CREATE DATABASE cafeteria;
USE cafeteria;

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO produtos (nome, preco, descricao) VALUES
('Café Espresso', 4.50, 'Café curto e forte'),
('Cappuccino', 6.00, 'Café com leite vaporizado e espuma'),
('Pão de Queijo', 3.00, 'Pão de queijo mineiro');

INSERT INTO pedidos (produto_id, quantidade, data_pedido) VALUES
(1, 2, '2025-05-20'),
(2, 1, '2025-05-21'),
(3, 5, '2025-05-21');

