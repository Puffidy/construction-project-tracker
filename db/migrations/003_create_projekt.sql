DROP TABLE IF EXISTS projekt CASCADE;

CREATE TABLE IF NOT EXISTS projekt (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    kunde_id BIGINT NOT NULL REFERENCES kunde(id) ON DELETE RESTRICT,
    name TEXT NOT NULL,
    start_datum DATE NOT NULL,
    end_geplant DATE,
    budget_chf NUMERIC (12,2) NOT NULL CHECK (budget_chf >= 0),
    status TEXT NOT NULL DEFAULT 'aktiv' CHECK (status IN ('aktiv', 'pausiert', 'abgeschlossen', 'storinert')),
    ersellt_am TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
