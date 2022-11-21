SELECT * FROM tipos_produtos;

-- Alter
ALTER TABLE tipos_produtos ADD peso DECIMAL(8,2);

-- Drop

-- Deletando tabela
DROP TABLE tipos_produtos; -- A tabela não será excluida pois tem outra tabela dependente dessa

-- Deletando banco de dados
DROP DATABASE secao04; -- Não será deletado pois o banco de dados está conectado.