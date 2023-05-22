# Insertar datos en SQL

/*
 hay 3 maneras de insertar datos en SQL
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

-- sintáxis completa (mencionando los campos)

/* INSERT INTO nombreTabla
    ( nCampo, nCampo, nCampo )
 VALUES
    ( valor, valor, valor );
 */

INSERT INTO billeteras
    ( nombre, precio, stock )
  VALUES
    ( 'Trezor T', 78000, 20 );


-- sintáxis simplificada ( sin mencionando los campos)

/* INSERT INTO nombreTabla
      VALUES
        ( valorID, valorCampo2, calorCampo3 );
 */

INSERT INTO billeteras
    VALUES
        ( DEFAULT, 'Ledger Nano X', 56000, 20 );