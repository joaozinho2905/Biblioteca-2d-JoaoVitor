CREATE TABLE livros (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    ano_publicacao INT,
    categoria VARCHAR(50)
);
CREATE TABLE leitores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);
CREATE TABLE emprestimos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_livro INT,
    id_leitor INT,
    data_emprestimo DATE,
    data_devolucao DATE,
    devolvido BOOLEAN,
    FOREIGN KEY (id_livro) REFERENCES livros(id),
    FOREIGN KEY (id_leitor) REFERENCES leitores(id)
);