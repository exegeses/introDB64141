# Insertar datos en SQL

/*
 hay 3 maneras der insertar datos en SQL
 */

-- sintáxis utilizando SET

INSERT INTO billeteras
    SET
        id = 1,
        nombre = 'Ledger Nano S',
        precio = 16000,
        stock = 30;

-- otro ejemplo
INSERT INTO billeteras
SET
    id = DEFAULT,
    nombre = 'Trezor One',
    precio = 19500,
    stock = 30;