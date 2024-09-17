CREATE DATABASE AulaBancoJunto;
USE AulaBancoJunto;
CREATE TABLE a (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    descricao VARCHAR(100),
    data_criacao DATE,
    valor DECIMAL(10,2),
    status BOOLEAN
);
CREATE TABLE b (
    id INT PRIMARY KEY AUTO_INCREMENT,
    codigo VARCHAR(20),
    quantidade INT,
    preco DECIMAL(10,2),
    data_atualizacao DATE,
    ativo BOOLEAN
);
CREATE TABLE c (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    autor VARCHAR(50),
    paginas INT,
    data_publicacao DATE,
    disponivel BOOLEAN
);
CREATE TABLE d (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(50),
    produto VARCHAR(50),
    quantidade INT,
    preco_total DECIMAL(10,2),
    data_pedido DATE
);
CREATE TABLE g (
    id INT PRIMARY KEY AUTO_INCREMENT,
    categoria VARCHAR(50),
    descricao_categoria VARCHAR(100),
    numero_produtos INT,
    data_registro DATE,
    status_categoria BOOLEAN
);
INSERT INTO a (nome, descricao, data_criacao, valor, status) VALUES
('Produto1', 'Descrição Produto1', '2023-09-01', 100.50, TRUE),
('Produto2', 'Descrição Produto2', '2023-09-02', 150.75, TRUE),
('Produto3', 'Descrição Produto3', '2023-09-03', 200.00, FALSE),
('Produto4', 'Descrição Produto4', '2023-09-04', 99.99, TRUE),
('Produto5', 'Descrição Produto5', '2023-09-05', 120.25, FALSE),
('Produto6', 'Descrição Produto6', '2023-09-06', 300.60, TRUE),
('Produto7', 'Descrição Produto7', '2023-09-07', 450.10, TRUE),
('Produto8', 'Descrição Produto8', '2023-09-08', 88.99, FALSE),
('Produto9', 'Descrição Produto9', '2023-09-09', 250.40, TRUE),
('Produto10', 'Descrição Produto10', '2023-09-10', 500.90, TRUE);

INSERT INTO b (codigo, quantidade, preco, data_atualizacao, ativo) VALUES
('COD1', 10, 100.50, '2023-09-01', TRUE),
('COD2', 15, 150.75, '2023-09-02', TRUE),
('COD3', 20, 200.00, '2023-09-03', FALSE),
('COD4', 5, 99.99, '2023-09-04', TRUE),
('COD5', 12, 120.25, '2023-09-05', FALSE),
('COD6', 8, 300.60, '2023-09-06', TRUE),
('COD7', 25, 450.10, '2023-09-07', TRUE),
('COD8', 30, 88.99, '2023-09-08', FALSE),
('COD9', 18, 250.40, '2023-09-09', TRUE),
('COD10', 40, 500.90, '2023-09-10', TRUE);

INSERT INTO c (titulo, autor, paginas, data_publicacao, disponivel) VALUES
('Livro1', 'Autor1', 100, '2023-01-01', TRUE),
('Livro2', 'Autor2', 150, '2023-02-01', TRUE),
('Livro3', 'Autor3', 200, '2023-03-01', FALSE),
('Livro4', 'Autor4', 250, '2023-04-01', TRUE),
('Livro5', 'Autor5', 300, '2023-05-01', TRUE),
('Livro6', 'Autor6', 180, '2023-06-01', FALSE),
('Livro7', 'Autor7', 220, '2023-07-01', TRUE),
('Livro8', 'Autor8', 260, '2023-08-01', TRUE),
('Livro9', 'Autor9', 310, '2023-09-01', FALSE),
('Livro10', 'Autor10', 120, '2023-10-01', TRUE);

INSERT INTO d (nome_cliente, produto, quantidade, preco_total, data_pedido) VALUES
('Cliente1', 'Produto1', 2, 201.00, '2023-09-01'),
('Cliente2', 'Produto2', 1, 150.75, '2023-09-02'),
('Cliente3', 'Produto3', 4, 800.00, '2023-09-03'),
('Cliente4', 'Produto4', 1, 99.99, '2023-09-04'),
('Cliente5', 'Produto5', 3, 360.75, '2023-09-05'),
('Cliente6', 'Produto6', 2, 601.20, '2023-09-06'),
('Cliente7', 'Produto7', 1, 450.10, '2023-09-07'),
('Cliente8', 'Produto8', 2, 177.98, '2023-09-08'),
('Cliente9', 'Produto9', 1, 250.40, '2023-09-09'),
('Cliente10', 'Produto10', 5, 2504.50, '2023-09-10');

INSERT INTO g (categoria, descricao_categoria, numero_produtos, data_registro, status_categoria) VALUES
('Categoria1', 'Descrição Categoria1', 10, '2023-09-01', TRUE),
('Categoria2', 'Descrição Categoria2', 20, '2023-09-02', TRUE),
('Categoria3', 'Descrição Categoria3', 15, '2023-09-03', FALSE),
('Categoria4', 'Descrição Categoria4', 30, '2023-09-04', TRUE),
('Categoria5', 'Descrição Categoria5', 40, '2023-09-05', FALSE),
('Categoria6', 'Descrição Categoria6', 25, '2023-09-06', TRUE),
('Categoria7', 'Descrição Categoria7', 18, '2023-09-07', TRUE),
('Categoria8', 'Descrição Categoria8', 12, '2023-09-08', FALSE),
('Categoria9', 'Descrição Categoria9', 50, '2023-09-09', TRUE),
('Categoria10', 'Descrição Categoria10', 22, '2023-09-10', TRUE);

UPDATE a SET valor = valor * 1.1 WHERE id <= 10;
UPDATE a SET descricao = 'Atualizado Produto1' WHERE id = 1;
-- Repita a lógica para os demais produtos
UPDATE b SET preco = preco + 10 WHERE id <= 10;
UPDATE b SET codigo = 'Atualizado COD1' WHERE id = 1;
-- Repita para os outros registros
UPDATE c SET paginas = paginas + 20 WHERE id <= 10;
UPDATE c SET titulo = 'Atualizado Livro1' WHERE id = 1;
-- Repita para os demais registros
UPDATE d SET preco_total = preco_total * 1.2 WHERE id <= 10;
UPDATE d SET nome_cliente = 'Atualizado Cliente1' WHERE id = 1;
-- Repita para os outros pedidos
UPDATE g SET numero_produtos = numero_produtos + 5 WHERE id <= 10;
UPDATE g SET categoria = 'Atualizado Categoria1' WHERE id


