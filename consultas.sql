-- Livros disponíveis
SELECT * FROM livros
WHERE id NOT IN (
    SELECT id_livro FROM emprestimos WHERE devolvido = FALSE
);
-- Livros emprestados atualmente
SELECT livros.titulo, leitores.nome, emprestimos.data_emprestimo
FROM emprestimos
JOIN livros ON emprestimos.id_livro = livros.id
JOIN leitores ON emprestimos.id_leitor = leitores.id
WHERE emprestimos.devolvido = FALSE;
-- Empréstimos de um leitor
SELECT * FROM emprestimos
WHERE id_leitor = 1;
-- Livros por categoria
SELECT categoria, COUNT(*) AS total
FROM livros
GROUP BY categoria;
-- Leitores com empréstimos pendentes
SELECT leitores.nome, livros.titulo
FROM emprestimos
JOIN leitores ON emprestimos.id_leitor = leitores.id
JOIN livros ON emprestimos.id_livro = livros.id
WHERE emprestimos.devolvido = FALSE;
-- Empréstimos por mês
SELECT MONTH(data_emprestimo) AS mes, COUNT(*) AS total
FROM emprestimos
GROUP BY mes;