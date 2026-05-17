# ER Diagram — Construction Project Tracker

This diagram shows the database schema for the Baustellen-Cockpit:
9 tables modeling projects, construction sites, workers, materials, and the
relationships between them.

```mermaid
erDiagram
    KUNDE ||--o{ PROJEKT : "places"
    PROJEKT ||--o{ BAUSTELLE : "has"
    BAUSTELLE ||--o{ STUNDENRAPPORT : "logs"
    MITARBEITER ||--o{ STUNDENRAPPORT : "files"
    BAUSTELLE ||--o{ MATERIALVERBRAUCH : "consumes"
    MATERIAL ||--o{ MATERIALVERBRAUCH : "used in"
    MATERIAL ||--o{ MATERIAL_LIEFERANT : "supplied by"
    LIEFERANT ||--o{ MATERIAL_LIEFERANT : "supplies"

    KUNDE {
        bigint id PK
        text name
        text kontakt
        text email
        text telefon
        timestamptz erstellt_am
    }
    PROJEKT {
        bigint id PK
        bigint kunde_id FK
        text name
        date start_datum
        date end_geplant
        numeric budget_chf
        text status
        timestamptz erstellt_am
    }
    BAUSTELLE {
        bigint id PK
        bigint projekt_id FK
        text bezeichnung
        text adresse
        varchar plz
        text ort
        text status
    }
    MITARBEITER {
        bigint id PK
        text vorname
        text nachname
        text rolle
        numeric stundensatz_chf
        boolean aktiv
        date eintritt
    }
    LIEFERANT {
        bigint id PK
        text name UK
        text kontakt
        text telefon
    }
    MATERIAL {
        bigint id PK
        text bezeichnung
        text einheit
        numeric preis_chf
        boolean vorfertigung_faehig
    }
    MATERIAL_LIEFERANT {
        bigint material_id PK_FK
        bigint lieferant_id PK_FK
        numeric preis_chf
    }
    STUNDENRAPPORT {
        bigint id PK
        bigint mitarbeiter_id FK
        bigint baustelle_id FK
        date datum
        numeric stunden
        text taetigkeit
    }
    MATERIALVERBRAUCH {
        bigint id PK
        bigint baustelle_id FK
        bigint material_id FK
        numeric menge
        date datum
        boolean vorgefertigt
    }
```

## Cardinality notation

- `||` = "exactly one"
- `o{` = "zero or more"

So `KUNDE ||--o{ PROJEKT` reads as: one customer has zero or more projects;
each project belongs to exactly one customer.

## Key design notes

- **MITARBEITER ↔ PROJEKT have no direct relationship.** A worker's involvement
  with a project is derived through the hours they log on its Baustellen
  (`stundenrapport → baustelle → projekt`) Workers flow between sites day to day rather than being formally
  assigned.

- **ON DELETE behavior is intentional:** `PROJEKT → BAUSTELLE` cascades (delete
  a project, all its sites go too), but `KUNDE → PROJEKT` restricts (you can't
  delete a customer who still has projects).

- **`MATERIAL_LIEFERANT` is a pure junction table** (composite PK of both FKs),
  modeling the many-to-many supplier relationship with per-supplier pricing.
