CREATE TABLE plano(
	id_plano INT PRIMARY KEY,
	preco NUMERIC
);

CREATE TABLE generos(
	id_genero INT PRIMARY KEY,
	nome VARCHAR(40)
);

CREATE TABLE diretores(
	id_diretor INT PRIMARY KEY,
	nome VARCHAR(80)
);

CREATE TABLE filmes(
	id_filme SERIAL PRIMARY KEY NOT NULL,
	titulo VARCHAR(80) NOT NULL,
	ano INT,
	id_genero INT NOT NULL,
	id_diretor INT NOT NULL,
		CONSTRAINT fk_id_genero
			FOREIGN KEY (id_genero) REFERENCES generos(id_genero),
		CONSTRAINT fk_id_diretor
			FOREIGN KEY (id_diretor) REFERENCES diretores(id_diretor)

);

CREATE TABLE usuarios(
	id_usuario INT PRIMARY KEY,
	email VARCHAR(120),
	id_plano INT NOT NULL,
		CONSTRAINT fk_id_plano
			FOREIGN KEY (id_plano) REFERENCES plano (id_plano)

);
CREATE TABLE assistidos(
	id_usuario INT NOT NULL,
	id_filme INT NOT NULL,
		CONSTRAINT pk_assistidos PRIMARY KEY(id_usuario, id_filme),
		CONSTRAINT id_filme_assitidos
			FOREIGN KEY (id_filme) REFERENCES filmes (id_filme),
		CONSTRAINT id_usuario_assistidos
			FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);