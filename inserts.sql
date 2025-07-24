INSERT INTO livros (titulo, autor, ano_publicacao, categoria) VALUES
('Dom Casmurro', 'Machado de Assis', 1899, 'Romance'),
('A Revolução dos Bichos', 'George Orwell', 1945, 'Fábula política'),
('Clean Code', 'Robert C. Martin', 2008, 'Tecnologia');
INSERT INTO leitores (nome, email, telefone) VALUES
('Ana Silva', 'ana@email.com', '11999999999'),
('João Souza', 'joao@email.com', '11988888888');
INSERT INTO emprestimos (id_livro, id_leitor, data_emprestimo, data_devolucao, devolvido) VALUES
(1, 1, '2025-07-01', '2025-07-10', TRUE),
(2, 2, '2025-07-15', NULL, FALSE);