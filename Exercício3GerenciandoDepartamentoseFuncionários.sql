/*Exerc�cio 3: Gerenciando Departamentos e Funcion�rios
Imagine um sistema de gerenciamento de recursos humanos para uma empresa com as tabelas "Departamentos" e "Funcion�rios". Cada departamento pode ter v�rios funcion�rios, mas cada funcion�rio est� associado a apenas um departamento.

Tabela "Departamentos":
Campos: DepartamentoID (Chave Prim�ria), NomeDepartamento
Tabela "Funcion�rios": 
Campos: FuncionarioID (Chave Prim�ria), Nome, Cargo, Salario, DepartamentoID (Chave Estrangeira referenciando DepartamentoID na tabela Departamentos)*/

CREATE TABLE DEPARTAMENTOS(
	DEPARTAMENTO_ID INT PRIMARY KEY IDENTITY(1,1),
	NOME_DEPARTAMENTO VARCHAR (50) NOT NULL 
);

CREATE TABLE FUNCIONARIOS(
	FUNCIONARIO_ID INT PRIMARY KEY IDENTITY(1,1),
	NOME VARCHAR(150) NOT NULL,
	CARGO VARCHAR(50) NOT NULL,
	SALARIO FLOAT NOT NULL,
	DEPARTAMENTO_ID INT FOREIGN KEY REFERENCES DEPARTAMENTOS(DEPARTAMENTO_ID),

);

INSERT DEPARTAMENTOS (NOME_DEPARTAMENTO) VALUES
    ('Vendas'),
    ('Recursos Humanos'),
    ('Tecnologia da Informa��o'),
    ('Marketing'),
    ('Log�stica');

SELECT * FROM DEPARTAMENTOS;

INSERT FUNCIONARIOS (NOME, CARGO, SALARIO, DEPARTAMENTO_ID) VALUES 
	('Ana', 'Vendedor(a)', 1700.00, 1),
	('Amanda', 'Gerente de Recursos Humanos', 4500.00, 2),
	('Guilherme', 'Programador Pleno', 5000.99, 3),
	('Jo�o', 'Designer Gr�fico', 2000.00, 4),
	('Paulo', 'Gerente de Marketing Digital', 6000.00, 4);

SELECT * FROM DEPARTAMENTOS;
SELECT * FROM FUNCIONARIOS;

SELECT *
FROM DEPARTAMENTOS
INNER JOIN FUNCIONARIOS ON DEPARTAMENTOS.DEPARTAMENTO_ID = FUNCIONARIOS.DEPARTAMENTO_ID;