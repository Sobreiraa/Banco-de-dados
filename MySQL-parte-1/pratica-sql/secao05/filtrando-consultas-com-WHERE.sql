CREATE DATABASE secao05;
USE secao05;

CREATE TABLE tipos_produto(
	codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(30) NOT NULL,
    PRIMARY KEY(codigo)
);

CREATE TABLE produtos(
	codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(30) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    codigo_tipo INT NOT NULL,
    FOREIGN KEY (codigo_tipo) REFERENCES tipos_produto(codigo)
);

# INSERINDO DADOS NA TABELA TIPOS_PRODUTO
INSERT INTO tipos_produto (descricao) VALUES ('Celular');
INSERT INTO tipos_produto (descricao) VALUES ('Carro');

# INSERINDO DADOS NA TABELA PRODUTOS
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Samsung A7', '1200', 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Moto x4', '1300', 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Corolla 2022', '49500', 2);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Strada 2022','25000', 2);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Moto G8', '1500', 1);

-- Filtrando consultas com WHERE
SELECT * FROM produtos WHERE codigo_tipo = 2;
SELECT * FROM produtos WHERE codigo_tipo = 1 AND preco > 300;










