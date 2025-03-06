-- actualizar el estado de una incidencia

CREATE PROCEDURE sp_update_incidencia_estatus
@id_incidencia INT,
@id_estatus INT
AS
BEGIN
    UPDATE incidencias
    SET id_estatus = @id_estatus
    WHERE id_incidencia = @id_incidencia;
END;

-- asignar un grupo de soporte a una incidencia

CREATE PROCEDURE sp_assign_group
@id_incidencia INT,
@id_grupos INT
AS
BEGIN
    UPDATE incidencias
    SET id_grupos = @id_grupos
    WHERE id_incidencia = @id_incidencia;
END;

