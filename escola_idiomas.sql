CREATE TABLE disciplinas(
	id_disciplina SERIAL PRIMARY KEY, 
	nome VARCHAR(50) NOT NULL
	)
CREATE TABLE professores(
	 cpf_prof CHAR(11) PRIMARY KEY,
	 nome VARCHAR(80) NOT NULL
)
CREATE TABLE turmas(
	id_turma INT PRIMARY KEY,
	sala VARCHAR(20),
	cpf_prof CHAR NOT NULL,
	id_disciplina INT NOT NULL,
		CONSTRAINT fk_prof_turma
			FOREIGN KEY(cpf_prof) REFERENCES professores(cpf_prof),
		CONSTRAINT fk_disciplina_turma 
			FOREIGN KEY(id_disciplina) REFERENCES disciplinas(id_disciplina)
)
CREATE TABLE alunos(
	matricula INT PRIMARY KEY,
	nome VARCHAR(80) NOT NULL,
	id_turma INT NOT NULL,
		CONSTRAINT fk_turma_aluno
			FOREIGN KEY(id_turma) REFERENCES turmas(id_turma)
)