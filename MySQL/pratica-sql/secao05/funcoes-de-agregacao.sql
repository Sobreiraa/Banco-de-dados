CREATE DATABASE agregacao;
USE agregacao;

CREATE TABLE categorias (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL
);

CREATE TABLE PRODUTOS (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(90) NOT NULL,
    preco_venda DECIMAL(8,2) NOT NULL,
    preco_custo DECIMAL(8,2) NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

INSERT INTO categorias (nome) VALUES ('Material Escolar');
INSERT INTO categorias (nome) VALUES ('Acessório Informática');
INSERT INTO categorias (nome) VALUES ('Material Escritório');
INSERT INTO categorias (nome) VALUES ('Game');

INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caderno', '5.45', '2.30', 1);
INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caneta', '1.20', '0.70', 1);
INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Pendrive 32GB', '20.50', '8.30', 2);
INSERT INTO produtos (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Mouse', '90.99', '40.50', 2);


# Funções de Agregação

-- MAX (Máximo Valor)
SELECT MAX(preco_venda) FROM produtos;

-- MIN (Mínimo Valor)
SELECT MIN(preco_custo) FROM produtos;

-- AVG (Cálcula a média)
SELECT AVG(preco_venda) FROM produtos;

-- ROUND (Arredondar)
SELECT ROUND(AVG(preco_venda), 2) FROM produtos;

-- COUNT (Contagem)
SELECT COUNT(preco_venda) AS quantidade FROM produtos WHERE id_categoria = 1;

-- GROUP BY (Agrupar)
SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria;

-- HAVING 
SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria HAVING MAX(preco_venda) > 10;