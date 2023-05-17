# Crear tablas en una base de datos

## Creación de tablas

> Para crear una tabla utilizamos el comando  
> "CREATE TABLE"

> Sintáxis:

    CREATE TABLE nombreTabla  
    ( 
        nombreCampo tipo características,  
        nombreCampo2 tipo características,  
        nombreCampo3 tipo características,  
        nombreCampo4 tipo características
    );

> Ejemplo práctico: 

    CREATE TABLE billeteras
    (
        id tinyint unsigned primary key auto_increment not null,
        nombre varchar(30) not null,
        precio float(9,2) unsigned not null,
        stock tinyint unsigned not null
    );

## Eliminación de tablas

> Para eliminar una tabla utilizamos el comando ***DROP***

> Sintáxis:

    DROP TABLE nombreTable;