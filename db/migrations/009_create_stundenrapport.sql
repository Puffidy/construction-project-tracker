DROP TABLE IF EXISTS stundenrapport CASCADE;

CREATE TABLE stundenrapport (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    mitarbeiter_id BIGINT NOT NULL REFERENCES mitarbeiter(id) ON DELETE RESTRICT,
    baustelle_id BIGINT NOT NULL REFERENCES baustelle(id) ON DELETE CASCADE,
    datum DATE NOT NULL,
    stunden NUMERIC(4,2) NOT NULL CHECK (stunden > 0 AND stunden <= 16),
    taetigkeit TEXT NOT NULL
);