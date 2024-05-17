-- 4. Quais são os alunos matriculados em determinado módulo de um curso e em qual grade curricular  estão inseridos?
SELECT aluno.nome, grade_curricular.quantidade
FROM aluno
JOIN matricula ON aluno.idAluno = matricula.idAluno
JOIN turma ON matricula.idTurma = turma.idTurma
JOIN modulo ON turma.idModulo = modulo.idModulo
JOIN grade_curricular ON modulo.idModulo = grade_curricular.idModulo
WHERE modulo.numero = 1;

