-- creación de tabla roles
create table roles
(
    idRol tinyint unsigned primary key auto_increment not null,
    rol varchar(30) unique not null
);

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO roles (idRol, rol)
VALUES
    (1, 'Administrador'),
    (2, 'Supervisor'),
    (3, 'Usuario'),
    (4, 'Invitado');

