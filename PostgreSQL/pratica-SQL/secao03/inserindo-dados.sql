-- INSERT

-- Tipos Produtos
INSERT INTO tipos_produtos (descricao) VALUES ('Computador');
INSERT INTO tipos_produtos (descricao) VALUES ('Celular');
INSERT INTO tipos_produtos (descricao) VALUES ('Impressora') ;

SELECT * FROM tipos_produtos;


-- Produtos
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Notebook', 2345.67, 1);
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Iphone 14', 8541.54, 2);
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Moto G8', 2999.99, 2);

SELECT * FROM produtos;


-- Pacientes
INSERT INTO pacientes (nome, endereco, bairro, cidade, estado, cep, data_nascimento)
	VALUES ('Matheus', 'Rua 39', 'Vila Formosa', 'Anápolis', 'GO', 75114550, '18-11-2022');
INSERT INTO pacientes (nome, endereco, bairro, cidade, estado, cep, data_nascimento)
	VALUES ('Lucas', 'Rua 9', 'Jk', 'Goiânia', 'GO', 65110414, '18-11-2022');
INSERT INTO pacientes (nome, endereco, bairro, cidade, estado, cep, data_nascimento)
	VALUES ('Maria', 'Rua 1', 'Paraíso', 'Anápolis', 'GO', 014558941, '18-11-2022');

SELECT * FROM pacientes;