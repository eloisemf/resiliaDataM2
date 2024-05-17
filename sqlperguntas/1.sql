-- 1. Qual é o número total de alunos matriculados em cada turma?
SELECT turma.idTurma, COUNT(matricula.idAluno) AS 'Total de Alunos Matriculados'
FROM turma
JOIN matricula ON turma.idTurma = matricula.idTurma
GROUP BY turma.idTurma;

