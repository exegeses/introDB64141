# Consultas en SQL

## Consultas a server

> Para hacer consultas al server utilizamos la palabra reservado ***SELECT*** 

    SELECT DATABASE();  

    SELECT CURRENT_DATE();  

## Consultas a una tabla de una base de datos

> Traer todos los datos de una tabla
> Sintáxis: 

    SELECT * FROM nombretabla

> Traer algunas columnas de una tabla
> Sintáxis:

    SELECT nombreColumna, nombreColumna   
    FROM nombretabla

> Ejemplo práctico:

    SELECT destNombre, destPrecio  
    FROM destinos;    

## Orden de resultados

> Para ordenar los resultados de una consulta utilizamos el comando ***ORDER BY***
> Ejemplo práctico:
 
    SELECT destNombre, destPrecio  
    FROM destinos  
    ORDER BY destPrecio;

## Filtros

> Filtrar registros significa traer sólmante ciertos registros quw cumplan una condición 
> Para especificar condiciones utilizamos la palara reservada ***WHERE***

> Sintáxis: 

    SELECT nombreColumna, nombreColumna  
    FROM nombreTabla  
    WHERE condicion; 

> Ejemplo práctico: 
> Traer nombre, precio de la tabla destinos 
> con un precio que no supere los 8500

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE destPrecio <= 8500;

> Traer nombre, precio de la tabla destinos
> con un precio entre 6500 y 8500 

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE destPrecio >= 6500  
    AND destPrecio <= 8500;

> Ahora el mismo resultado, pero utilizando el comando ***BETWEEN***

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE destPrecio BETWEEN 6500 AND 8500;

> Traer nombre, precio de la tabla destinos 
> del destino con la región 5

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE idRegion = 5;

> Traer nombre, precio de la tabla destinos
> de los destinos con la región 5 y los de la región 7

    SELECT destNombre, destPrecio    
    FROM destinos    
    WHERE idRegion = 5    
    OR idRegion = 7;

    SELECT destNombre, destPrecio    
    FROM destinos    
    WHERE idRegion IN ( 5, 7 );

