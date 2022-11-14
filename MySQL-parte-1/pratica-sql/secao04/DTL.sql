SELECT * FROM tipos_produto;

# DTL

-- Transaction / FAZER E DESFAZER TRANSAÇÕES DE ACORDO COM NOSSAS NECESSIDADES
# Comando realizado entre cliente ao servidor 

START TRANSACTION;
	INSERT INTO tipos_produto (descricao) VALUES ('Medicamentos');
    INSERT INTO tipos_produto (descricao) VALUES ('Roupa');

-- Commit
COMMIT;

-- Rollback
ROLLBACK;