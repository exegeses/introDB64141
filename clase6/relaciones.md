# Consulta a varias tablas (relaciones)

> Cuando queremos traer datos de dos o más tablas
> debemos relacionar dichas tablas.

> Tenemos dos técnicas: 
- Table relation  
- Join

## Table relation
> La técnica ***table relation*** se logra agregando en el FROM las tablas necesarias (separadas con comas)
> y luego usando un filtro igualamos la columna en común.

> Sintáxis: 

    SELECT colTabla1, colTabla1, colTabla2  
    FROM tabla1, tabla2  
    WHERE tabla1.idForeignTabla1 = tabla2.idPrimarytabla2;  

> Dónde idForeignTabla1 es el foreign key de la tabla 1
> Dónde idPrimaryTabla2 es el primary key de la tabla 2

> Ejemplo práctico: 

    SELECT destNombre, destPrecio, regNombre
    FROM destinos, regiones
    WHERE destinos.idRegion = regiones.idRegion;


    SELECT prdNombre, prdPrecio, mkNombre   
    FROM productos, marcas  
    WHERE productos.idMarca = marcas.idMarca;


    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
    FROM productos, marcas, categorias  
    WHERE productos.idMarca = marcas.idMarca  
     AND  productos.idCategoria = categorias.idCategoria;  

## JOIN

> La técnica ***JOIN*** se logra agregando en el FROM una sóla tabla (la tabla principal),
> luego la tabla secundaria se menciona con la palabra JOIN
> y finalmente usando ***ON** igualamos la columna en común.

> Sintáxis:

    SELECT colTabla1, colTabla1, colTabla2  
    FROM tabla1  
     JOIN tabla2    
      ON tabla1.idForeignTabla1 = tabla2.idPrimarytabla2;  

> Ejemplo práctico: 

    SELECT destNombre, destPrecio, regNombre  
    FROM destinos  
    JOIN regiones  
     ON destinos.idRegion = regiones.idRegion;


    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
    FROM productos  
    JOIN marcas  
      ON productos.idMarca = marcas.idMarca   
    JOIN categorias  
     ON productos.idCategoria = categorias.idCategoria; 