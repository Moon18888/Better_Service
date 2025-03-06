-- CREATE

CREATE PROCEDURE sp_RegistrarEspecialista
    @id_especialista INT,
    @job_title NVARCHAR(255),
    @id_grupo INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Verificar si el especialista ya existe
        IF EXISTS (SELECT 1 FROM especialistas WHERE id_especialista = @id_especialista AND id_grupo = @id_grupo)
        BEGIN
            -- Si el especialista ya existe, se revierte la transacción y muestra un mensaje
            ROLLBACK TRANSACTION;
            PRINT 'El especialista ya pertenece a ese grupo.';
        END
        ELSE
        BEGIN
            -- Insertar el nuevo especialista
            INSERT INTO especialistas (id_especialista, job_title, id_grupo)
            VALUES (@id_especialista, @job_title, @id_grupo);

            COMMIT TRANSACTION;
            PRINT 'Especialista registrado exitosamente.';
        END
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'Error al registrar el especialista.';
    END CATCH
END;

-- DELETE

CREATE PROCEDURE sp_EliminarEspecialista
    @id_especialista INT,
    @id_grupo INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Verificar si el especialista existe
        IF EXISTS (SELECT 1 FROM especialistas WHERE id_especialista = @id_especialista AND id_grupo = @id_grupo)
        BEGIN
            -- Eliminar el especialista
            DELETE FROM especialistas
            WHERE id_especialista = @id_especialista AND id_grupo = @id_grupo;

            COMMIT TRANSACTION;
            PRINT 'Especialista eliminado exitosamente.';
        END
        ELSE
        BEGIN
            -- Si el especialista no existe, se revierte la transacción y muestra un mensaje
            ROLLBACK TRANSACTION;
            PRINT 'El especialista no existe en ese grupo.';
        END
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'Error al eliminar el especialista.';
    END CATCH
END;


-- UPDATE

CREATE PROCEDURE sp_ActualizarEspecialista
    @id_especialista INT,
    @job_title NVARCHAR(255),
    @id_grupo INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Verificar si el especialista existe
        IF EXISTS (SELECT 1 FROM especialistas WHERE id_especialista = @id_especialista AND id_grupo = @id_grupo)
        BEGIN
            -- Actualizar el especialista
            UPDATE especialistas
            SET job_title = @job_title
            WHERE id_especialista = @id_especialista AND id_grupo = @id_grupo;

            COMMIT TRANSACTION;
            PRINT 'Especialista actualizado exitosamente.';
        END
        ELSE
        BEGIN
            -- Si el especialista no existe, se revierte la transacción y muestra un mensaje
            ROLLBACK TRANSACTION;
            PRINT 'El especialista no existe en ese grupo.';
        END
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'Error al actualizar el especialista.';
    END CATCH
END;

-- VIEW

CREATE VIEW vw_Especialistas
AS
SELECT *
FROM especialistas
ORDER BY id_especialista;
