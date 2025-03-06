--CREATE

CREATE PROCEDURE sp_AgregarUsuario
    @nombre NVARCHAR(255),
    @apellido_P NVARCHAR(255),
    @apellido_M NVARCHAR(255),
    @correo NVARCHAR(255),
    @telefono NVARCHAR(20),
    @ubicacion NVARCHAR(255)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Verificar si el usuario ya existe
        IF EXISTS (SELECT 1 FROM usuario WHERE correo = @correo OR  telefono = @telefono)
        BEGIN
            -- Si el usuario ya existe, se revierte la transacción y muestra un mensaje
            ROLLBACK TRANSACTION;
            PRINT 'El correo electrónico o telefono ya está registrado.';
        END
        ELSE
        BEGIN
            -- Insertar el nuevo usuario
            INSERT INTO usuario (id_usuario, nombre, apellido_P, apellido_M, correo, telefono, ubicacion)
            VALUES (@id_usuario, @nombre, @apellido_P, @apellido_M, @correo, @telefono, @ubicacion);

            COMMIT TRANSACTION;
            PRINT 'Usuario registrado exitosamente.';
        END
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'Error al registrar el usuario.';
    END CATCH
END;

-- DELETE

CREATE PROCEDURE sp_EliminarUsuario
    @id_usuario INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Verificar si el usuario existe
        IF EXISTS (SELECT 1 FROM usuario WHERE id_usuario = @id_usuario)
        BEGIN
            -- Eliminar el usuario
            DELETE FROM usuario WHERE id_usuario = @id_usuario;

            COMMIT TRANSACTION;
            PRINT 'Usuario eliminado exitosamente.';
        END
        ELSE
        BEGIN
            -- Si el usuario no existe, se revierte la transacción y muestra un mensaje
            ROLLBACK TRANSACTION;
            PRINT 'El usuario no existe.';
        END
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'Error al eliminar el usuario.';
    END CATCH
END;

-- UPDATE


CREATE PROCEDURE sp_ActualizarUsuario
    @id_usuario INT,
    @nombre NVARCHAR(255),
    @apellido_P NVARCHAR(255),
    @apellido_M NVARCHAR(255),
    @correo NVARCHAR(255),
    @telefono NVARCHAR(20),
    @ubicacion NVARCHAR(255)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Verificar si el usuario existe
        IF EXISTS (SELECT 1 FROM usuario WHERE id_usuario = @id_usuario)
        BEGIN
            -- Actualizar el usuario
            UPDATE usuario
            SET nombre = @nombre,
                apellido_P = @apellido_P,
                apellido_M = @apellido_M,
                correo = @correo,
                telefono = @telefono,
                ubicacion = @ubicacion
            WHERE id_usuario = @id_usuario;

            COMMIT TRANSACTION;
            PRINT 'Usuario actualizado exitosamente.';
        END
        ELSE
        BEGIN
            -- Si el usuario no existe, se revierte la transacción y muestra un mensaje
            ROLLBACK TRANSACTION;
            PRINT 'El usuario no existe.';
        END
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'Error al actualizar el usuario.';
    END CATCH
END;
