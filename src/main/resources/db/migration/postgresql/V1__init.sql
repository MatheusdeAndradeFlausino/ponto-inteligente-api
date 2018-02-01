CREATE TABLE empresa (
	id serial PRIMARY KEY,
	cnpj VARCHAR(255) NOT NULL,
	data_atualizacao TIMESTAMP NOT NULL,
	data_criacao TIMESTAMP NOT NULL,
	razao_social VARCHAR(255)
);

CREATE TABLE funcionario (
	id serial PRIMARY KEY,
	cpf VARCHAR(255) NOT NULL,
	data_atualizacao TIMESTAMP NOT NULL,
	data_criacao TIMESTAMP NOT NULL,
	email VARCHAR(255) NOT NULL,
	nome VARCHAR(255) NOT NULL,
	perfil VARCHAR(255) NOT NULL,
	qtd_horas_almoco FLOAT DEFAULT NULL,
	qtd_horas_trabalho_dia FLOAT DEFAULT NULL,
	senha VARCHAR(255) NOT NULL,
	valor_hora DECIMAL(19,2) DEFAULT NULL,
	empresa_id INT REFERENCES empresa (id)
);

CREATE TABLE lancamento (
	id serial PRIMARY KEY,
	"data" TIMESTAMP NOT NULL,
	data_atualizacao TIMESTAMP NOT NULL,
	data_criacao TIMESTAMP NOT NULL,
	descricao VARCHAR(255) DEFAULT NULL,
	localizacao VARCHAR(255) DEFAULT NULL,
	tipo VARCHAR(255) NOT NULL,
	funcionario_id INT REFERENCES funcionario(id)
);