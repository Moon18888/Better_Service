CREATE PROCEDURE sp_CrearNota
    @id_incidencia INT,
    @id_especialista INT,
    @descripcion VARCHAR(100)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Verificar si la incidencia y el especialista existen antes de insertar
        IF EXISTS (SELECT 1 FROM incidencias WHERE id_incidencia = @id_incidencia)
        AND EXISTS (SELECT 1 FROM usuario WHERE id_usuario = @id_especialista)
        BEGIN
            INSERT INTO notas (id_incidencia, id_especialista, fecha_nota, descripcion)
            VALUES (@id_incidencia, @id_especialista, GETDATE(), @descripcion);

            COMMIT TRANSACTION;
            PRINT 'Nota registrada exitosamente.';
        END
        ELSE
        BEGIN
            ROLLBACK TRANSACTION;
            PRINT 'Error: La incidencia o el especialista no existen.';
        END
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'Error al registrar la nota.';
    END CATCH
END;




CREATE PROCEDURE sp_EliminarNota
    @id_notas INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Verificar si la nota existe
        IF EXISTS (SELECT 1 FROM notas WHERE id_notas = @id_notas)
        BEGIN
            DELETE FROM notas WHERE id_notas = @id_notas;

            COMMIT TRANSACTION;
            PRINT 'Nota eliminada exitosamente.';
        END
        ELSE
        BEGIN
            ROLLBACK TRANSACTION;
            PRINT 'Error: La nota no existe.';
        END
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'Error al eliminar la nota.';
    END CATCH
END;





CREATE PROCEDURE sp_ActualizarNota
    @id_notas INT,
    @descripcion VARCHAR(100)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Verificar si la nota existe antes de actualizar
        IF EXISTS (SELECT 1 FROM notas WHERE id_notas = @id_notas)
        BEGIN
            UPDATE notas
            SET descripcion = @descripcion
            WHERE id_notas = @id_notas;

            COMMIT TRANSACTION;
            PRINT 'Nota actualizada exitosamente.';
        END
        ELSE
        BEGIN
            ROLLBACK TRANSACTION;
            PRINT 'Error: La nota no existe.';
        END
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'Error al actualizar la nota.';
    END CATCH
END;



CREATE VIEW vw_Notas
AS
SELECT n.id_notas, n.id_incidencia, i.short_description AS Incidencia, 
       n.id_especialista, u.nombre AS Especialista, n.fecha_nota, n.descripcion
FROM notas n
JOIN incidencias i ON n.id_incidencia = i.id_incidencia
JOIN usuario u ON n.id_especialista = u.id_usuario
ORDER BY n.fecha_nota DESC;



