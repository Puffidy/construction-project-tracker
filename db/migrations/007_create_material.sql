DROP TABLE IF EXISTS material CASCADE;

CREATE TABLE material (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    bezeichnung TEXT NOT NULL,
    einheit TEXT NOT NULL CHECK (einheit IN ('stk', 'm', 'm2', 'kg', 'l')),
    preis_chf NUMERIC(10,2) NOT NULL CHECK (preis_chf >= 0),
    vorfertigung_faehig BOOLEAN NOT NULL DEFAULT FALSE
)