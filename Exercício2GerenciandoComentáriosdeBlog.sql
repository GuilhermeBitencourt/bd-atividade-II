/*Exerc�cio 2: Gerenciando Coment�rios de Blog
Suponha que voc� esteja criando um banco de dados para um sistema de blog com duas tabelas: 
"Artigos" e "Coment�rios". Cada artigo pode ter v�rios coment�rios, mas cada coment�rio est� associado a apenas um artigo.

Tabela "Artigos":
Campos: ArtigoID (Chave Prim�ria), T�tulo, Conte�do, DataPublica��o
Tabela "Coment�rios":
Campos: ComentarioID (Chave Prim�ria), ArtigoID (Chave Estrangeira referenciando ArtigoID na tabela Artigos), Autor, Texto, DataComentario*/

CREATE TABLE ARTIGOS(
	ARTIGO_ID INT  PRIMARY KEY IDENTITY(1,1),
	TITULO VARCHAR(50) NOT NULL,
	CONTEUDO VARCHAR(150) NOT NULL,
	DATA_PUBLICACAO DATE NOT NULL

);

CREATE TABLE COMENTARIOS(
	COMENTARIO_ID INT PRIMARY KEY IDENTITY(1,1),
	ARTIGO_ID INT FOREIGN KEY REFERENCES ARTIGOS(ARTIGO_ID),
	AUTOR VARCHAR(50) NOT NULL,
	TEXTO VARCHAR(50) NOT NULL,
	DATA_COMENTARIO DATE
);

INSERT ARTIGOS (TITULO, CONTEUDO, DATA_PUBLICACAO) VALUES 
    ('Como criar um banco de dados SQL', 'Este artigo descreve como criar um banco de dados SQL passo a passo.', '2023-09-01'),
    ('Melhores pr�ticas de seguran�a na web', 'Descubra as principais pr�ticas de seguran�a para proteger seu site.', '2023-09-02'),
    ('Introdu��o � programa��o em Python', 'Aprenda os conceitos b�sicos de programa��o com a linguagem Python.', '2023-09-03'),
    ('Receita de bolo de chocolate', 'Aqui est� uma deliciosa receita de bolo de chocolate para voc� experimentar.', '2023-09-04'),
    ('Dicas para melhorar sua produtividade', 'Descubra como aumentar sua produtividade no trabalho com estas dicas pr�ticas.', '2023-09-05');

	ALTER TABLE COMENTARIOS
	ALTER COLUMN TEXTO VARCHAR(300);

INSERT COMENTARIOS(ARTIGO_ID, AUTOR, TEXTO, DATA_COMENTARIO) VALUES
    (1, 'Ana', '�timo tutorial! Muito �til para iniciantes em SQL.', '2023-09-10'),
    (2, 'Carlos', 'Concordo plenamente com as melhores pr�ticas de seguran�a.', '2023-09-11'),
    (1, 'Marta', 'Gostaria de ver mais exemplos pr�ticos.', '2023-09-12'),
    (3, 'Pedro', 'Python � uma linguagem incr�vel para iniciantes.', '2023-09-13'),
    (4, 'Laura', 'Adorei a receita! Vou fazer o bolo este fim de semana.', '2023-09-14');


SELECT * FROM ARTIGOS;
SELECT * FROM COMENTARIOS;

SELECT ARTIGOS.ARTIGO_ID, ARTIGOS.TITULO, ARTIGOS.CONTEUDO, COMENTARIOS.COMENTARIO_ID, COMENTARIOS.AUTOR, COMENTARIOS.TEXTO
FROM ARTIGOS
INNER JOIN COMENTARIOS ON ARTIGOS.ARTIGO_ID = COMENTARIOS.ARTIGO_ID;