# Modificar estructura de una tabla  

## Cambiar nombre de una columna

> Sintáxis: 
 
    ALTER TABLE nombreTabla  
        CHANGE nombreActual nombreNuevo tipoDato modificador;

    ALTER TABLE destinos   
    CHANGE destAsientos totales tinyint unsigned not null;

## Cambiar tipo de datos de una columna

> Sintáxis: 

    ALTER TABLE nombreTabla  
        MODIFY nombreColumna tipoDato modificador;

    ALTER TABLE destinos  
    MODIFY destNombre varchar(45) not null;

## Agregar una nueva columna a una tabla al final 

> Sintáxis:

    ALTER TABLE nombreTabla  
        ADD nombreColumna tipoDato modificador;  

    ALTER TABLE billeteras
    ADD [column] descripcion varchar(500) not null;  
## Agregar una nueva columna a una tabla después de una columna existente

> Sintáxis: 
 
    ALTER TABLE nombreTabla  
        ADD nombreColumnaNueva tipoDato modificador 
        AFTER nombreColumnaExistente;  

    ALTER TABLE billeteras
        ADD descripcion varchar(500) not null
        AFTER precio;


## Eliminar una columna
> Sintáxis:

    ALTER TABLE nombreTabla  
        DROP nombreColumna;

    ALTER TABLE billeteras  
    DROP descripcion;