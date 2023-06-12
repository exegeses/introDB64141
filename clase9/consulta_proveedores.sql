# Consulta para saber cuales son los proveedores de nuestros productos

-- traer nombre de producto,
-- traer nombre de proveedor
-- ordenados por producto


/* versión JOIN */
SELECT prdNombre AS Producto, prvNombre AS Proveedor
    FROM productos
         JOIN productos_proveedores
              on productos.idProducto = productos_proveedores.idProducto
         JOIN proveedores
              on proveedores.idProveedor = productos_proveedores.idProveedor
    ORDER BY prdNombre;


/* versión tabla relation */
SELECT prdNombre AS Producto, prvNombre AS Proveedor
  FROM productos, proveedores, productos_proveedores
 WHERE productos.idProducto = productos_proveedores.idProducto
   AND proveedores.idProveedor = productos_proveedores.idProveedor
ORDER BY prdNombre;