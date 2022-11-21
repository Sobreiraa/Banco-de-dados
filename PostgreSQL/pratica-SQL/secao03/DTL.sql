SELECT * FROM tipos_produtos;

BEGIN TRANSACTION;

INSERT INTO tipos_produtos (descricao) VALUES ('Equipamentos');
INSERT INTO tipos_produtos (descricao) VALUES ('Comidas');

-- Commit
COMMIT;


BEGIN TRANSACTION;
	INSERT INTO tipos_produtos (descricao) VALUES ('Roupas');
	INSERT INTO tipos_produtos (descricao) VALUES ('Acessórios');

ROLLBACK;