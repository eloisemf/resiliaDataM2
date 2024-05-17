-- 6.Alunos que podem ser jovem aprendiz (menos de 24 anos)
SELECT COUNT(*) AS 'Alunos que podem ser jovem aprendiz (24 anos)'
FROM aluno
WHERE DATEDIFF(CURDATE(), data_nascimento) / 365 <= 24;
