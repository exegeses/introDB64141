# Creación de tabla regiones
CREATE TABLE regiones
(
    idRegion tinyint unsigned primary key auto_increment not null,
    regNombre varchar(30) not null
);

-- Insertar datos
INSERT INTO regiones
VALUES
    ( DEFAULT, 'América del Sur' ),
    ( DEFAULT, 'América Central' ),
    ( DEFAULT, 'Caribe y México' ),
    ( DEFAULT, 'América del Norte' ),
    ( DEFAULT, 'Europa Occidental'),
    ( DEFAULT, 'Europa del Este'),
    ( DEFAULT, 'Asia'),
    ( DEFAULT, 'Oceanía');