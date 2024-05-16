--trigger para ser disparado quando o atributo status de um estudante for atualizado e inserir um novo dado em uma tabela de log.

-- Verifica se a tabela de log já existe
CREATE TABLE IF NOT EXISTS log_matricula  (
        idLog int NOT NULL AUTO_INCREMENT PRIMARY KEY,
        idMatricula int,
        novo_status varchar(10),
        data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (idMatricula) REFERENCES matricula(idMatricula));


-- Cria o trigger
DELIMITER //
CREATE TRIGGER after_update_matricula_status
AFTER UPDATE ON matricula
FOR EACH ROW
BEGIN
    IF OLD.status_matricula != NEW.status_matricula THEN
        INSERT INTO log_matricula (idMatricula, novo_status)
        VALUES (OLD.idMatricula, NEW.status_matricula);
    END IF;
END;
//
DELIMITER ;
