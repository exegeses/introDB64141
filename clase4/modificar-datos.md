# Modificación de datos

> Para modificar datos dentro de una tabla utilizamos el comando ***UPDATE*** 

> Sintáxis: 

    UPDATE nombreTabla  
      SET  
            nombreColumna = valor,
            nombreColumna = valor,
     WHERE columnaID = valorID;

> Ejemplo práctico: 

    UPDATE billeteras  
      SET precio = 1650  
    WHERE id = 1;

> Aumentar el precio de un producto 
> y que el valor se igual a un 5% de incremento

    UPDATE billeteras  
      SET precio = precio * 1.05  
    WHERE id = 2;