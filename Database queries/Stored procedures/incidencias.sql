/*Ingresar Incidente*/
 
CREATE PROCEDURE sp_RegistrarIncidente
 
   @p_id_incidencia INT,
   @p_fecha DATE,
   @p_id_usuario INT,
   @p_short_description VARCHAR(255),
   @p_descripcion VARCHAR(1500),
   @p_id_urgencia INT,
   @p_id_impacto INT,
   @p_id_prioridad INT,
   @p_id_categoria INT,
   @p_id_subcategoria INT,
   @p_id_grupos INT,
   @p_id_especialista INT
 
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;
-- Verificar si el cliente ya existe por ID

		IF EXISTS (SELECT 1 FROM incidencias WHERE id_incidencia = @p_id_incidencia) 
		BEGIN
			ROLLBACK TRANSACTION;
            PRINT 'La incidencia con ese ID ya existe.';
		END
		ELSE
		BEGIN

            -- Insertar la nueva incidencia

            INSERT INTO incidencias (
                id_incidencia, 
                fecha, 
                id_usuario, 
                short_description, 
                descripcion, 
                id_urgencia, 
                id_impacto, 
                id_prioridad, 
                id_categoria, 
                id_subcategoria, 
                id_grupos, 
                id_especialista

            )

            VALUES (

                @p_id_incidencia,
		@p_fecha, 
                @p_id_usuario, 
                @p_short_description, 
                @p_descripcion, 
                @p_id_urgencia, 
                @p_id_impacto, 
                @p_id_prioridad, 
                @p_id_categoria, 
                @p_id_subcategoria, 
                @p_id_grupos, 
                @p_id_especialista

            );
 
            COMMIT TRANSACTION;
            SELECT 'Incidencia registrada exitosamente.';
        END
    END TRY
    BEGIN CATCH
        ROLLBACK;
        SELECT 'Error al registrar la incidencia.' AS mensaje;
    END CATCH
END;

/*borrar Incidente*/
 
CREATE PROCEDURE sp_Borrar_Incidencia
    @id_incidencia INT
AS
BEGIN
    -- Comprobamos si la incidencia existe antes de borrarla
    IF EXISTS (SELECT 1 FROM incidencias WHERE id_incidencia = @id_incidencia)
    BEGIN
        DELETE FROM incidencias WHERE id_incidencia = @id_incidencia;
        PRINT 'Incidencia eliminada correctamente.';
    END
    ELSE
    BEGIN
        PRINT 'No se encontró la incidencia con el ID especificado.';
    END
END
 
GO

/*Actualizar Incidente*/
 
CREATE PROCEDURE sp_Actualizar_Incidencia

    @id_incidencia INT,
    @fecha DATE,
    @short_description VARCHAR(255),
    @descripcion VARCHAR(1500),
    @id_urgencia INT,
    @id_impacto INT,
    @id_prioridad INT,
    @id_categoria INT,
    @id_subcategoria INT,
    @id_grupos INT,
    @id_especialista INT

AS

BEGIN

    -- Comprobamos si la incidencia existe antes de intentar actualizarla

    IF EXISTS (SELECT 1 FROM incidencias WHERE id_incidencia = @id_incidencia)

    BEGIN

        -- Realizamos la actualización de la incidencia

        UPDATE incidencias

        SET

            fecha = @fecha,
            short_description = @short_description,
            descripcion = @descripcion,
            id_urgencia = @id_urgencia,
            id_impacto = @id_impacto,
            id_prioridad = @id_prioridad,
            id_categoria = @id_categoria,
            id_subcategoria = @id_subcategoria,
            id_grupos = @id_grupos,
            id_especialista = @id_especialista

        WHERE id_incidencia = @id_incidencia;
         PRINT 'Incidencia actualizada correctamente.';

    END
    ELSE

    BEGIN
        PRINT 'No se encontró la incidencia con el ID especificado.';

    END
END
GO
 
/*Vista de ultimos 10 incidentes*/
 
CREATE VIEW sp_Nuevas_Incidencias AS

SELECT TOP 10 

    id_incidencia,
    fecha,
    short_description,
    descripcion,
    id_urgencia,
    id_impacto,
    id_prioridad,
    id_categoria,
    id_subcategoria,
    id_grupos,
    id_especialista

FROM incidencias

ORDER BY fecha DESC;
 
 
GO
 
 
