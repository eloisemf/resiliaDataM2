-- Quais são os cursos que um determinado aluno está matriculado incluindo informações
-- sobre os módulos de cada curso e os facilitadores responsáveis por cada módulo?
SELECT aluno.nome AS 'Nome do Aluno', curso.nome AS 'Nome do Curso', modulo.numero AS 'Número do Módulo',
modulo.ementa AS 'Ementa do Módulo', facilitador.nome AS 'Nome do Facilitador'
FROM aluno
JOIN matricula ON aluno.idAluno = matricula.idAluno
JOIN turma ON matricula.idTurma = turma.idTurma
JOIN modulo ON turma.idModulo = modulo.idModulo
JOIN facilitador ON modulo.idFacilitador = facilitador.idFacilitador
JOIN grade_curricular ON modulo.idModulo = grade_curricular.idModulo
JOIN curso ON grade_curricular.idCurso = curso.idCurso
WHERE aluno.idAluno = 1
