actualizar el estado de una incidencia

CREATE PROCEDURE sp_update_incidencia_estatus
@id_incidencia INT,
@id_estatus INT
AS
BEGIN
    UPDATE incidencias
    SET id_estatus = @id_estatus
    WHERE id_incidencia = @id_incidencia;
END;

 agregar una nota a una incidencia
