-- Consulta em múltiplas tabelas (QUANDO SE TEM ALGUM TIPO DE RELACIONAMENTO)

SELECT * FROM tipos_produto;
SELECT * FROM produtos;

SELECT p.codigo AS 'Código', p.descricao AS 'Descrição do produto', p.preco AS 'Preço', tp.descricao AS 'Tipo do Produto'
	FROM produtos AS p, tipos_produto AS tp
    WHERE p.codigo_tipo = tp.codigo;








