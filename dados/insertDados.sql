-- Inserção na tabela facilitador [5 dados nessa tabela]
INSERT INTO facilitador (nome, disciplina, especialização) 
VALUES 
('Ana Rodrigues', 'Programação', 'Bacharel em Ciência da Computação'),
('Pedro Silva', 'Redes de Computadores', 'Especialista em Segurança da Informação'),
('Mariana Santos', 'Banco de Dados', 'Mestre em Engenharia de Software'),
('Rafaela Oliveira', 'Desenvolvimento Web', 'Graduada em Sistemas de Informação'),
('Lucas Costa', 'Inteligência Artificial', 'Doutor em Ciência da Computação');


-- Inserção na tabela modulo [10 dados nessa tabela]
INSERT INTO modulo (numero, data_inicio, data_fim, ementa, idFacilitador) 
VALUES 
(1, '2024-09-01', '2024-12-15', 'Introdução à Programação', 1),
(2, '2024-09-01', '2024-12-15', 'Redes de Computadores', 1),
(3, '2024-09-01', '2024-12-15', 'Modelagem de Dados', 3),
(4, '2024-09-01', '2024-12-15', 'Desenvolvimento Web Avançado', 4),
(5, '2024-09-01', '2024-12-15', 'Aprendizado de Máquina', 5),
(6, '2024-09-01', '2024-12-15', 'Sistemas Distribuídos', 1),
(7, '2024-09-01', '2024-12-15', 'Banco de Dados Avançado', 2),
(8, '2024-09-01', '2024-12-15', 'Segurança da Informação', 3),
(9, '2024-09-01', '2024-12-15', 'Desenvolvimento Mobile', 4);

-- Inserção na tabela turma [5 dados nessa tabela]
INSERT INTO turma (turno, sala, capacidade, semestre, idModulo) 
VALUES 
('Manhã', 'A101', 30, 1, 1),
('Tarde', 'B201', 25, 1, 2),
('Noite', 'C301', 35, 2, 3),
('Manhã', 'D401', 30, 2, 4),
('Tarde', 'E501', 25, 3, 5);


-- Inserção na tabela aluno [20 dados nessa tabela]
INSERT INTO aluno (nome, data_nascimento, telefone, email, cpf, cep, cidade, estado) 
VALUES 
('Maria Souza', '2000-05-10', '+55 123456789', 'maria@example.com', '123.456.789-10', '12345-678', 'São Paulo', 'SP'),
('João Santos', '2001-03-15', '+55 987654321', 'joao@example.com', '987.654.321-10', '54321-876', 'Rio de Janeiro', 'RJ'),
('Ana Oliveira', '1999-12-20', '+55 987654321', 'ana@example.com', '456.123.789-10', '98765-432', 'Belo Horizonte', 'MG'),
('Pedro Lima', '2002-07-05', '+55 987654321', 'pedro@example.com', '789.123.456-10', '87654-321', 'Porto Alegre', 'RS'),
('Carla Silva', '2000-01-30', '+55 987654321', 'carla@example.com', '321.456.789-10', '76543-210', 'Recife', 'PE'),
('Lucas Oliveira', '1998-11-25', '+55 987654321', 'lucas@example.com', '654.789.123-10', '65432-109', 'Salvador', 'BA'),
('Mariana Souza', '2001-09-15', '+55 987654321', 'mariana@example.com', '234.567.891-10', '54321-098', 'Curitiba', 'PR'),
('Rafael Lima', '1999-06-10', '+55 987654321', 'rafael@example.com', '987.654.321-10', '43210-987', 'Fortaleza', 'CE'),
('Gabriel Santos', '2000-04-05', '+55 987654321', 'gabriel@example.com', '345.678.912-10', '32109-876', 'Manaus', 'AM'),
('Amanda Oliveira', '2002-08-20', '+55 987654321', 'amanda@example.com', '789.123.456-10', '21098-765', 'Vitória', 'ES'),
('Rodrigo Silva', '1998-10-25', '+55 987654321', 'rodrigo@example.com', '456.789.123-10', '10987-654', 'Natal', 'RN'),
('Laura Lima', '2001-11-15', '+55 987654321', 'laura@example.com', '567.891.234-10', '09876-543', 'Brasília', 'DF'),
('Guilherme Souza', '2000-02-05', '+55 987654321', 'guilherme@example.com', '678.912.345-10', '98765-432', 'Florianópolis', 'SC'),
('Fernanda Santos', '1999-07-30', '+55 987654321', 'fernanda@example.com', '891.234.567-10', '87654-321', 'Porto Velho', 'RO'),
('Julia Oliveira', '2002-12-25', '+55 987654321', 'julia@example.com', '123.456.789-10', '76543-210', 'Campo Grande', 'MS'),
('Bruno Lima', '1998-05-15', '+55 987654321', 'bruno@example.com', '234.567.891-10', '65432-109', 'João Pessoa', 'PB'),
('Luana Souza', '2000-09-10', '+55 987654321', 'luana@example.com', '345.678.912-10', '54321-098', 'Teresina', 'PI'),
('Marcos Santos', '1999-04-05', '+55 987654321', 'marcos@example.com', '456.789.123-10', '43210-987', 'Belém', 'PA'),
('Camila Oliveira', '2001-08-20', '+55 987654321', 'camila@example.com', '567.891.234-10', '32109-876', 'Maceió', 'AL'),
('Felipe Silva', '1998-10-25', '+55 987654321', 'felipe@example.com', '678.912.345-10', '10987-654', 'Goiânia', 'GO');


-- Inserção na tabela curso [3 dados nessa tabela]
INSERT INTO curso (nome, matriz_curricular, duração, idAluno, idTurma) 
VALUES 
('Engenharia de Software', 'Engenharia de Requisitos, Desenvolvimento Ágil, Testes de Software', '4 anos', 1, 1),
('Ciência de Dados', 'Mineração de Dados, Estatística, Machine Learning', '4 anos', 2, 2),
('Segurança da Informação', 'Criptografia, Análise de Riscos, Ethical Hacking', '4 anos', 3, 3);


-- Inserção na tabela matricula [tabela de junção do dados da tabela Turma e Aluno]
INSERT INTO matricula (idTurma, idAluno, status_matricula) 
VALUES 
(1, 1, 'ativo'),
(1, 2, 'ativo'),
(1, 3, 'evasão'),
(1, 4, 'ativo'),
(1, 5, 'evasão'),
(2, 6, 'ativo'),
(2, 7, 'ativo'),
(2, 8, 'ativo'),
(2, 9, 'evasão'),
(2, 10, 'evasão'),
(3, 11, 'evasão'),
(3, 12, 'ativo'),
(3, 13, 'ativo'),
(3, 14, 'ativo'),
(3, 15, 'ativo'),
(4, 16, 'ativo'),
(4, 17, 'ativo'),
(4, 18, 'ativo'),
(4, 19, 'ativo'),
(4, 20, 'ativo');

-- Inserção na tabela grade_curricular [tabela de junção do dados da tabelas Curso e Modulo]
INSERT INTO grade_curricular (idCurso, idModulo, quantidade) 
VALUES 
(1, 1, '4'),
(1, 2, '4'),
(3, 3, '4'), 
(2, 4, '4'),
(2, 5, '4'),
(2, 6, '4'),
(3, 7, '4'),
(3, 8, '4'),
(3, 9, '4');