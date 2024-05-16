-- view porcentagem de estudantes com status de evasão 
agrupados por turma
CREATE VIEW porcentagem_evasao_turma AS
SELECT
    T.idTurma,
    COUNT(CASE WHEN M.status_matricula = 'evasão' THEN 1 END) AS alunos_evasao,
    COUNT(M.idTurma) AS total_alunos,
    CONCAT(ROUND(COUNT(CASE WHEN M.status_matricula = 'evasão' THEN 1 END) / NULLIF(COUNT(M.idTurma), 0) * 100, 2), '%') AS porcentagem_evasao
FROM
    turma T
LEFT JOIN
    matricula M ON T.idTurma = M.idTurma
GROUP BY
    T.idTurma;
