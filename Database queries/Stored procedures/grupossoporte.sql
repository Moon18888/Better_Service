CREATE PROCEDURE sp_CrearGrupo
    @grupo VARCHAR(100),
    @descripcion VARCHAR(255),
    @nivel INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Check if the group already exists
        IF EXISTS (SELECT 1 FROM grupossoporte WHERE grupo = @grupo)
        BEGIN
            -- Raise an error if the group already exists
            PRINT 'El grupo ya existe. No se puede duplicar.'
            ROLLBACK TRANSACTION;
            RETURN;
        END
        -- Insert new group
        INSERT INTO grupossoporte (grupo, descripcion, nivel)
        VALUES (@grupo, @descripcion, @nivel);

        -- Commit transaction
        COMMIT TRANSACTION;
        PRINT 'Grupo de soporte creado exitosamente.';
    END TRY
    BEGIN CATCH
        -- Rollback transaction in case of error
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
        PRINT 'Error al crear el grupo de soporte '
    END CATCH
END;



CREATE PROCEDURE sp_EliminarGrupo
    @id_grupos INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Verificar si el grupo existe
        IF EXISTS (SELECT 1 FROM grupossoporte WHERE id_grupos = @id_grupos)
        BEGIN
            DELETE FROM grupossoporte WHERE id_grupos = @id_grupos;

            COMMIT TRANSACTION;
            PRINT 'Grupo de soporte eliminado exitosamente.';
        END
        ELSE
        BEGIN
            ROLLBACK TRANSACTION;
            PRINT 'Error: El grupo de soporte no existe.';
        END
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'Error al eliminar el grupo de soporte.';
    END CATCH
END;





CREATE PROCEDURE sp_ActualizarGrupo
    @id_grupos INT,
    @grupo VARCHAR(100),
    @descripcion VARCHAR(255),
    @nivel INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Verificar si el grupo existe antes de actualizar
        IF EXISTS (SELECT 1 FROM grupossoporte WHERE id_grupos = @id_grupos)
        BEGIN
            UPDATE grupossoporte
            SET grupo = @grupo,
                descripcion = @descripcion,
                nivel = @nivel
            WHERE id_grupos = @id_grupos;

            COMMIT TRANSACTION;
            PRINT 'Grupo de soporte actualizado exitosamente.';
        END
        ELSE
        BEGIN
            ROLLBACK TRANSACTION;
            PRINT 'Error: El grupo de soporte no existe.';
        END
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'Error al actualizar el grupo de soporte.';
    END CATCH
END;



CREATE VIEW vw_GruposSoporte
AS
SELECT id_grupos, grupo, descripcion, nivel
FROM grupossoporte
ORDER BY nivel ASC;



