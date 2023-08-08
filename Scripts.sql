-- 1° passo
-- Criação de script com comandos DDL;

CREATE TABLE Pedidos (
    IdPedido INT PRIMARY KEY,
    NomeCliente VARCHAR(255),
    DataHoraPedido DATETIME,
    ValorTotal REAL
);

CREATE TABLE Produtos (
    IdProduto INT PRIMARY KEY,
    NomeProduto VARCHAR(255),
    ValorProduto DECIMAL(10, 2)
);

CREATE TABLE PedidoProdutos (
    IdPedido INT,
    IdProduto INT,
    Quantidade INT,
    PRIMARY KEY (IdPedido, IdProduto),
    FOREIGN KEY (IdPedido) REFERENCES Pedidos(IdPedido),
    FOREIGN KEY (IdProduto) REFERENCES Produtos(IdProduto)
);

-- 2° passo
-- Criação de script com comandos DML

-- a
INSERT INTO Produtos (IdProduto, NomeProduto, ValorProduto)
VALUES (1, 'Produto A', 10.99);

-- b
UPDATE Produtos
SET ValorProduto = 15.99
WHERE IdProduto = 1;

-- c
DELETE FROM Produtos
WHERE IdProduto = 1;

-- d
INSERT INTO Pedidos (IdPedido, NomeCliente, DataHoraPedido, ValorTotal)
VALUES (1, 'Cliente X', '2023-08-04 14:30:00', 50.00);

-- e
UPDATE Pedidos
SET DataHoraPedido = '2023-08-04 15:00:00'
WHERE IdPedido = 1;

-- f
DELETE FROM Pedidos
WHERE IdPedido = 1;

-- Populando as tabelas 'Produtos' e 'Pedidos' para inserir a quantidade.
INSERT INTO Produtos (IdProduto, NomeProduto, ValorProduto)
VALUES (1, 'Produto A', 10.99);

INSERT INTO Pedidos (IdPedido, NomeCliente, DataHoraPedido, ValorTotal)
VALUES (1, 'Cliente X', '2023-08-04 14:30:00', 50.00);

-- g
INSERT INTO PedidoProdutos (IdPedido, IdProduto, Quantidade)
VALUES (1, 1, 5);

-- 3° passo
-- Criação de script com comandos DQL
SELECT *
FROM Pedidos
ORDER BY DataHoraPedido DESC;

SELECT *
FROM Produtos
ORDER BY ValorProduto ASC
LIMIT 1;