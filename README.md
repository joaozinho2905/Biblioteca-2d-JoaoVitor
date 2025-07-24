# Biblioteca-2d-JoaoVitor
# Sistema de Gerenciamento de Biblioteca

## Descrição
Este projeto tem como objetivo modelar e implementar um sistema simples de gerenciamento de biblioteca, permitindo controlar livros, leitores e empréstimos.

# Entidades e Relacionamentos

- **livros**: armazena dados dos livros (título, autor, categoria)
- **leitores**: armazena os usuários da biblioteca
- **emprestimos**: relaciona os livros emprestados aos leitores

Relacionamento:
- Um leitor pode ter vários empréstimos.
- Um livro pode ser emprestado várias vezes, mas não simultaneamente.

# Modelagem

## Diagrama DER
![Diagrama Der em pdf](./Projeto-Biblioteca.pdf)

# Tabelas Normalizadas (até 3FN)
- Tabelas com atributos atômicos, sem redundância
- Todas as dependências são da chave primária
# Scripts SQL
- `modelagem_logica_fisica.sql`: criação das tabelas
- `inserts_exemplo.sql`: dados de exemplo
- `consultas.sql`: consultas SQL

# Exemplos de Consultas
1. Livros disponíveis
2. Livros emprestados atualmente
3. Histórico de empréstimos de um leitor
4. Contagem de livros por categoria
5. Leitores com empréstimos pendentes
6. Total de empréstimos por mês

# Tecnologias Utilizadas
- MySQL
- dbdiagram.io
- SQL padrão ANSI