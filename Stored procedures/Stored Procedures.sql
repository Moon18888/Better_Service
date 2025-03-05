*CREO esto ya esta mal

CREATE PROCEDURE NuevoUsuario (
    IN p_id_usuario INTEGER,
    IN p_nombre TEXT,
    IN p_apellido_P TEXT,
    IN p_apellido_M TEXT,
    IN p_coreo TEXT,
    IN p_telefono TEXT,
    IN p_ubicacion TEXT
)
BEGIN
    INSERT INTO usuario (id_usuario, nombre, apellido_P, apellido_M, coreo, telefono, ubicacion) VALUES
    (p_id_usuario, p_nombre, p_apellido_P, p_apellido_M, p_coreo, p_telefono, p_ubicacion);
END;

CREATE PROCEDURE NuevoEspecialista (
    IN p_id_especialista INTEGER,
    IN p_job_title TEXT,
    IN p_id_grupo INTEGER
)
BEGIN
    INSERT INTO especialistas (id_especialista, job_title, id_grupo) VALUES
    (p_id_especialista, p_job_title, p_id_grupo);
END;

---------------------------------------------------------------------------

CREATE PROCEDURE sp_RegistrarUsuario
    @nombre NVARCHAR(50),
    @apellido_p NVARCHAR(50),
    @apellido_m NVARCHAR(50),
    @coreo NVARCHAR(50),
    @telefono NVARCHAR(15),
    @ubicacion NVARCHAR(200)
AS
BEGIN

    IF EXISTS (SELECT 1 FROM usuario WHERE coreo = @coreo OR telefono = @telefono)
    BEGIN
        PRINT 'El usuario ya existe.';
        RETURN;
    END

    BEGIN TRANSACTION;
    
    INSERT INTO usuario (nombre, apellido_P, apellido_M, coreo, telefono, ubicacion)
    VALUES (@nombre, @apellido_p, @apellido_m, @coreo, @telefono, @ubicacion);

    COMMIT TRANSACTION;
    PRINT 'Usuario registrado exitosamente.';
END;
