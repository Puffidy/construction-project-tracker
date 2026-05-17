DROP TABLE IF EXISTS material_lieferant CASCADE;

CREATE TABLE material_lieferant (
    material_id BIGINT NOT NULL REFERENCES material(id) ON DELETE CASCADE,
    lieferant_id BIGINT NOT NULL REFERENCES lieferant(id) ON DELETE CASCADE,
    preis_chf NUMERIC(10,2),
    PRIMARY KEY (material_id, lieferant_id)
)