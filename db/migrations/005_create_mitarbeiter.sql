DROP TABLE IF EXISTS mitarbeiter CASCADE;

CREATE TABLE mitarbeiter (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    vorname TEXT NOT NULL,
    nachname TEXT NOT NULL,
    rolle TEXT NOT NULL, CHECK (rolle IN ('elektriker', 'lehrling', 'monteur', 'projektleiter', 'planer')),
    stundensatz_chf NUMERIC(6,2) NOT NULL CHECK (stundensatz_chf > 0),
    aktiv BOOLEAN NOT NULL DEFAULT TRUE,
    eintritt DATE NOT NULL DEFAULT CURRENT_DATE
)