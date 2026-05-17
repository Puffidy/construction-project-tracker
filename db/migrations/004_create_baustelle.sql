DROP TABLE IF EXISTS baustelle CASCADE;

CREATE TABLE baustelle (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    projekt_id BIGINT NOT NULL REFERENCES projekt(id) ON DELETE CASCADE,
    bezeichnung TEXT NOT NULL,
    adresse TEXT NOT NULL,
    plz VARCHAR(4) NOT NULL,
    ort TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'aktiv' CHECK (status IN ('aktiv', 'pausiert', 'abgeschlossen'))
);