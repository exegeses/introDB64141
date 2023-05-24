CREATE VIEW destinos_ordenados AS
    SELECT idDestino, destNombre, destPrecio, idRegion
    FROM destinos
    ORDER BY idRegion, destPrecio;