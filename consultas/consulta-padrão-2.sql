-- quais pessoas facilitadoras atuam em mais de uma turma
SELECT f.idFacilitador, f.nome, COUNT(t.idTurma) AS num_turmas
FROM facilitador f
INNER JOIN modulo m ON f.idFacilitador = m.idFacilitador
INNER JOIN turma t ON m.idModulo = t.idModulo
GROUP BY f.idFacilitador
HAVING COUNT(t.idTurma) > 1;
