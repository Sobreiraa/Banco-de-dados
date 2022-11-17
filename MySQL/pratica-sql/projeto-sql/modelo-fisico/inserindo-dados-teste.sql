# INSERINDO DADOS DE TESTE - DML

-- Tipos de Produtos
INSERT INTO tipos_produtos (tipo) VALUES ('Remédios');
INSERT INTO tipos_produtos (tipo) VALUES ('Cosméticos');
INSERT INTO tipos_produtos (tipo) VALUES ('Comidas');

-- Fabricantes
INSERT INTO fabricantes (fabricante) VALUES ('Neo Química');
INSERT INTO fabricantes (fabricante) VALUES ('Teuto');
INSERT INTO fabricantes (fabricante) VALUES ('Rancheiro');

-- Médicos
INSERT INTO medicos (nome, crm) VALUES ('Janaina Silva', '254897SP');
INSERT INTO medicos (nome, crm) VALUES ('Aline Costa', '123456GO');
INSERT INTO medicos (nome, crm) VALUES ('Lucas Crispim', '2255147RJ');

-- Clientes
INSERT INTO clientes (nome, rua, bairro, cep, estado, telefone, cpf) 
	VALUES ('Matheus Sobreira', 'Rua 38', 'Jk', '75114560', 'GO', '62992379966', '70372258954');
INSERT INTO clientes (nome, rua, bairro, cep, estado, telefone, cpf) 
	VALUES ('Luisa', 'Rua 7', 'Anápolis city', '6528872', 'GO', '6295338761', '90152870155');
INSERT INTO clientes (nome, rua, bairro, cep, estado, telefone, cpf) 
	VALUES ('Julia Silva', 'Rua 10', 'Norte', '7500065', 'GO', '62933144612', '00125766485');

-- Produtos
INSERT INTO produtos (nome, designacao, composicao, preco_de_venda, id_tipo_produto, id_fabricante)
	VALUES ('Dipirona', 'Dores em geral', 'Metilpropileno', '6.50', 1, 1);
INSERT INTO produtos (nome, designacao, composicao, preco_de_venda, id_tipo_produto, id_fabricante)
	VALUES ('Café', 'Café da manhã', 'Grãos do cafeeiro', '12.50', 3, 3);
INSERT INTO produtos (nome, designacao, composicao, preco_de_venda, id_tipo_produto, id_fabricante)
	VALUES ('Esmalte', 'Estética', 'Solventes', '9.90', 2, 1);

-- Compras
INSERT INTO compras (id_cliente, data) VALUES (1, '2022-11-17');
INSERT INTO compras (id_cliente, data) VALUES (2, '2019-02-27');
INSERT INTO compras (id_cliente, data) VALUES (1, '2006-12-17');

-- Produtos Compras
INSERT INTO produtos_compras (id_compra, id_produto, quantidade) VALUES (1, 1, 2);
INSERT INTO produtos_compras (id_compra, id_produto, quantidade) VALUES (2, 3, 4);
INSERT INTO produtos_compras (id_compra, id_produto, quantidade) VALUES (3, 2, 1);

-- Receitas Médicas
INSERT INTO receitas_medicas (id_produto_compra, id_medico, receita) VALUES (1, 2, 'receita1.pdf');




