-- 3.Alunos da região sudeste?
SELECT COUNT(*) AS 'Alunos da Região Sudeste'
FROM aluno
WHERE estado IN ('SP', 'RJ', 'MG', 'ES');
