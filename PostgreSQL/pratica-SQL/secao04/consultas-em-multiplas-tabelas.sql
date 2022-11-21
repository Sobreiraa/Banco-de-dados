-- Consultas em múltiplas tabelas;

SELECT p.codigo, p.descricao, p.preco, tp.descricao
	FROM produtos AS p, tipos_produtos AS tp
	WHERE p.codigo_tipo = tp.id;