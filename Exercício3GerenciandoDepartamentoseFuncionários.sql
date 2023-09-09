/*Exercício 3: Gerenciando Departamentos e Funcionários
Imagine um sistema de gerenciamento de recursos humanos para uma empresa com as tabelas "Departamentos" e "Funcionários". Cada departamento pode ter vários funcionários, mas cada funcionário está associado a apenas um departamento.

Tabela "Departamentos":
Campos: DepartamentoID (Chave Primária), NomeDepartamento
Tabela "Funcionários": 
Campos: FuncionarioID (Chave Primária), Nome, Cargo, Salario, DepartamentoID (Chave Estrangeira referenciando DepartamentoID na tabela Departamentos)*/

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
    ('Tecnologia da Informação'),
    ('Marketing'),
    ('Logística');

SELECT * FROM DEPARTAMENTOS;

INSERT FUNCIONARIOS (NOME, CARGO, SALARIO, DEPARTAMENTO_ID) VALUES 
	('Ana', 'Vendedor(a)', 1700.00, 1),
	('Amanda', 'Gerente de Recursos Humanos', 4500.00, 2),
	('Guilherme', 'Programador Pleno', 5000.99, 3),
	('João', 'Designer Gráfico', 2000.00, 4),
	('Paulo', 'Gerente de Marketing Digital', 6000.00, 4);

SELECT * FROM DEPARTAMENTOS;
SELECT * FROM FUNCIONARIOS;

SELECT *
FROM DEPARTAMENTOS
INNER JOIN FUNCIONARIOS ON DEPARTAMENTOS.DEPARTAMENTO_ID = FUNCIONARIOS.DEPARTAMENTO_ID;