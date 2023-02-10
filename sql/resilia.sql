CREATE DATABASE resilia;

USE resilia;




-- Criando tabela de cursos
CREATE TABLE cursos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  carga_horaria INT NOT NULL
);


-- Criando tabela de turmas
CREATE TABLE turmas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  id_curso INT NOT NULL,
  FOREIGN KEY (id_curso) REFERENCES cursos(id)
);


-- Criando tabela de alunos
CREATE TABLE alunos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  id_turma INT NOT NULL,
  FOREIGN KEY (id_turma) REFERENCES turmas(id)
);


-- Adicionando dados de exemplo à tabela de cursos
INSERT INTO cursos (nome, carga_horaria) 
VALUES 
    -> ("analise e desenvolvimentode sistemas", 200),
    -> ("jogos digitais", 200),
    -> ("sistema de dados", 200);

-- Adicionando dados de exemplo à tabela de turmas
INSERT INTO turmas (nome, id_curso) 
VALUES 
    -> ("turma 01", 1),
    -> ("turma 02", 1),
    -> ("turma 03", 2),
    -> ("turma 04", 3);

-- Adicionando dados de exemplo à tabela de alunos
INSERT INTO alunos (nome, email, id_turma) 
VALUES 
    -> ("pamela isley", "pammy23isley@email.com", 1),
    -> ("jason woodrue", "jasonw@email.com", 1),
    -> ("alec holland", "alecholl73@email.com", 2),
    -> ("susan white", "suzywhite@email.com", 3),
    -> ("oleander sorrel", "sorrel45@email.com", 4);                                    