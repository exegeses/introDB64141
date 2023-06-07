# Consultas a tabla usuarios

> Traer nombre, apellido, rol, email

    SELECT  nombre, apellido, rol, email   
    FROM usuarios  
    JOIN roles  
    ON usuarios.idRol = roles.idRol;


> Traer nombre, apellido, rol, email
> de los empleados de Pied Piper
 
    SELECT  nombre, apellido, rol, email   
    FROM usuarios  
    JOIN roles  
    ON usuarios.idRol = roles.idRol  
    WHERE email LIKE '%piedpiper%'; 

    SELECT  nombre, apellido, rol, email  
    FROM usuarios  
    JOIN roles  
    ON usuarios.idRol = roles.idRol  
    WHERE email NOT LIKE '%hooli%'  
    AND email NOT LIKE '%gmail%';


    SELECT nombre, apellido, rol, email 
    FROM usuarios  
    JOIN roles  
    ON usuarios.idRol = roles.idRol  
    WHERE rol != 'Invitado'; 

    SELECT nombre, apellido, rol, email 
    FROM usuarios  
    JOIN roles  
    ON usuarios.idRol = roles.idRol  
    WHERE rol in( 'Administrador', 'Supervisor', 'Usuario' ); 

    SELECT nombre, apellido, rol, email 
    FROM usuarios  
    JOIN roles  
    ON usuarios.idRol = roles.idRol  
    WHERE rol not in( 'Invitado' ); 

    SELECT nombre, apellido, rol, email 
    FROM usuarios  
    JOIN roles  
    ON usuarios.idRol = roles.idRol  
    WHERE usuarios.idRol in( 1, 2, 3 ); 

> Traer nombre, apellido, email fecha de nacimiento
> ordenados de mayor a menor
 
    SELECT nombre, apellido, email , fechaNacimiento  
    FROM usuarios  
    ORDER BY fechaNacimiento;

> Traer nombre, apellido, email fecha de nacimiento
> de los nacidos en 1998
> ordenados de mayor a menor

    SELECT nombre, apellido, email , fechaNacimiento  
    FROM usuarios  
    WHERE fechaNacimiento LIKE '1998%'  
    ORDER BY fechaNacimiento;

    SELECT nombre, apellido, email , fechaNacimiento
    FROM usuarios  
    WHERE YEAR(fechaNacimiento) = 1998
	ORDER BY fechaNacimiento;

> Traer nombre, apellido, email fecha de nacimiento
> de los nacidos en el mes de agosto
> ordenados de mayor a menor

    SELECT nombre, apellido, email , fechaNacimiento
    FROM usuarios  
    WHERE MONTH(fechaNacimiento) = 8  
	ORDER BY fechaNacimiento;

> Cuántos días faltan para el próximo feriado  
> (17 de junio - hoy es 7 de junio) 

    SELECT
    DATEDIFF('2023-06-17', CURDATE())
    AS dias_faltantes;