-- 7. Facilitadores e o conteúdo que ministram: 
SELECT facilitador.nome AS 'Nome do Facilitador', modulo.ementa AS 'Ementa do Módulo'
FROM facilitador
JOIN modulo ON facilitador.idFacilitador = modulo.idFacilitador;
