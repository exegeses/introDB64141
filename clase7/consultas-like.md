# Consultas de coincidencia ( que **contenga** una cadena de caractéres)

> Para generar una consulta que filtre por coincidencia (que **contenga** una cadena de caractéres) utilizamos la palabra reservada **LIKE**

> Traer nombre, precio y descripción, dónde
> en la descripción contenga la cadena 'altavoz'  

    SELECT prdNombre, prdPrecio, prdDescripcion
    FROM productos
    WHERE prdDescripcion LIKE '%altavoz%';

> Traer nombre, precio y descripción, dónde
> en el nombre comience con la cadena 'ni'  

    SELECT prdNombre, prdPrecio, prdDescripcion
    FROM productos
    WHERE prdNombre LIKE 'ni%';

> Traer nombre, precio y descripción, dónde
> en el nombre termine con la cadena 'ni'

    SELECT prdNombre, prdPrecio, prdDescripcion
    FROM productos
    WHERE prdNombre LIKE '%ni';

## Comodín de 1 (un) sólo caracter **_**

    SELECT prdNombre, prdPrecio, prdDescripcion
    FROM productos
    WHERE prdNombre LIKE '_40%';

