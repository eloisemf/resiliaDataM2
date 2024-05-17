-- 2. Quais são os facilitadores que estão ministrando aulas para um determinado curso em determinado módulo?
SELECT facilitador.nome
FROM facilitador
JOIN modulo ON facilitador.idFacilitador = modulo.idFacilitador
JOIN grade_curricular ON modulo.idModulo = grade_curricular.idModulo
JOIN curso ON grade_curricular.idCurso = curso.idCurso
WHERE curso.nome = 'Segurança da Informação' AND modulo.numero = 3;
