-- Criando um usuário
CREATE USER estagiario WITH PASSWORD '123456';

CREATE TABLE empresas(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	funcionarios INT NOT NULL,
	cidade VARCHAR(50) NOT NULL
);


-- Concedendo privilegios para o usuário estágiario
GRANT ALL ON empresas TO estagiario;

GRANT USAGE, SELECT ON SEQUENCE empresas_id_seq TO estagiario;