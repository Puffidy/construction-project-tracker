INSERT INTO kunde (name, kontakt, email, telefon) VALUES
('Migros Aare Genossenschaft',   'Daniela Frei',    'd.frei@migrosaare.ch',     '+41 62 123 45 67'),
('Coop Genossenschaft Region AG','Markus Huber',    'm.huber@coop.ch',          '+41 62 234 56 78'),
('Gemeinde Aarau',               'Beat Schneider',  'b.schneider@aarau.ch',     '+41 62 345 67 89'),
('IBAarau AG',                   'Sandra Meier',    's.meier@ibaarau.ch',       '+41 62 456 78 90'),
('Immobilien Treuhand Schmid',   'Thomas Schmid',   't.schmid@itschmid.ch',     '+41 62 567 89 01');


INSERT INTO projekt (kunde_id, name, start_datum, end_geplant, budget_chf, status) VALUES
(1, 'Migros Filiale Aarau Telli - Umbau',         '2025-09-01', '2026-06-30',  480000.00, 'aktiv'),
(1, 'Migros Verteilzentrum Suhr - Erweiterung',   '2025-06-15', '2026-03-31',  920000.00, 'aktiv'),
(1, 'Migros Restaurant Lenzburg - Renovation',    '2025-02-01', '2025-08-30',  180000.00, 'abgeschlossen'),
(2, 'Coop Supercenter Buchs - Neubau',            '2025-04-01', '2026-09-30', 1450000.00, 'aktiv'),
(2, 'Coop Tankstelle Schinznach - Modernisierung','2024-11-01', '2025-05-31',   95000.00, 'abgeschlossen'),
(3, 'Schulhaus Aarau - Photovoltaik Aufbau',      '2025-08-01', '2025-12-15',  240000.00, 'aktiv'),
(3, 'Stadthalle Aarau - Beleuchtung Umbau',       '2025-10-01', '2026-04-30',  165000.00, 'aktiv'),
(3, 'Gemeindeverwaltung Aarau - Serverraum',      '2025-03-01', '2025-09-30',   85000.00, 'abgeschlossen'),
(4, 'IBAarau Trafostation Buchs',                 '2025-07-15', '2026-01-31',  310000.00, 'aktiv'),
(4, 'IBAarau Smart Meter Rollout Phase 2',        '2025-09-01', '2026-12-31',  680000.00, 'aktiv'),
(5, 'MFH Bahnhofstrasse 12 Aarau - Sanierung',    '2025-05-01', '2025-11-30',  220000.00, 'pausiert'),
(5, 'EFH Buchs - Neubau Elektro',                 '2025-08-15', '2026-02-28',   75000.00, 'aktiv');


INSERT INTO baustelle (projekt_id, bezeichnung, adresse, plz, ort, status) VALUES
(1, 'Telli - Verkaufsfläche EG',     'Tellistrasse 88',     '5004', 'Aarau',     'aktiv'),
(1, 'Telli - Lager UG',              'Tellistrasse 88',     '5004', 'Aarau',     'aktiv'),
(1, 'Telli - Personalbereich OG',    'Tellistrasse 88',     '5004', 'Aarau',     'pausiert'),
(2, 'VZ Suhr - Halle A',             'Industriestrasse 24', '5034', 'Suhr',      'aktiv'),
(2, 'VZ Suhr - Halle B',             'Industriestrasse 24', '5034', 'Suhr',      'aktiv'),
(2, 'VZ Suhr - Bürogebäude',         'Industriestrasse 24', '5034', 'Suhr',      'aktiv'),
(3, 'Restaurant Lenzburg - Küche',   'Bahnhofstrasse 45',   '5600', 'Lenzburg',  'abgeschlossen'),
(3, 'Restaurant Lenzburg - Gastraum','Bahnhofstrasse 45',   '5600', 'Lenzburg',  'abgeschlossen'),
(4, 'Coop Buchs - Verkauf EG',       'Suhrerstrasse 8',     '5033', 'Buchs',     'aktiv'),
(4, 'Coop Buchs - Lager UG',         'Suhrerstrasse 8',     '5033', 'Buchs',     'aktiv'),
(4, 'Coop Buchs - Parking',          'Suhrerstrasse 8',     '5033', 'Buchs',     'aktiv'),
(4, 'Coop Buchs - Technikraum',      'Suhrerstrasse 8',     '5033', 'Buchs',     'aktiv'),
(5, 'Tankstelle Schinznach',         'Aarauerstrasse 12',   '5107', 'Schinznach','abgeschlossen'),
(6, 'Schulhaus Aarau - Dach Trakt A','Schulweg 6',          '5000', 'Aarau',     'aktiv'),
(6, 'Schulhaus Aarau - Dach Trakt B','Schulweg 6',          '5000', 'Aarau',     'aktiv'),
(7, 'Stadthalle - Haupthalle',       'Schachenallee 23',    '5000', 'Aarau',     'aktiv'),
(7, 'Stadthalle - Foyer',            'Schachenallee 23',    '5000', 'Aarau',     'pausiert'),
(8, 'Gemeindehaus - Serverraum',     'Rathausgasse 1',      '5000', 'Aarau',     'abgeschlossen'),
(9, 'Trafostation Buchs - Primär',   'Industriestrasse 47', '5033', 'Buchs',     'aktiv'),
(9, 'Trafostation Buchs - Sekundär', 'Industriestrasse 47', '5033', 'Buchs',     'aktiv'),
(10,'Smart Meter - Quartier Telli',  'div. Adressen',       '5004', 'Aarau',     'aktiv'),
(10,'Smart Meter - Quartier Rohr',   'div. Adressen',       '5032', 'Rohr',      'aktiv'),
(10,'Smart Meter - Quartier Suhr',   'div. Adressen',       '5034', 'Suhr',      'aktiv'),
(10,'Smart Meter - Quartier Buchs',  'div. Adressen',       '5033', 'Buchs',     'aktiv'),
(11,'MFH BHS12 - Treppenhaus',       'Bahnhofstrasse 12',   '5000', 'Aarau',     'pausiert'),
(11,'MFH BHS12 - Wohnungen 1-4',     'Bahnhofstrasse 12',   '5000', 'Aarau',     'pausiert'),
(11,'MFH BHS12 - Wohnungen 5-8',     'Bahnhofstrasse 12',   '5000', 'Aarau',     'pausiert'),
(12,'EFH Buchs - Keller',            'Hofweg 3',            '5033', 'Buchs',     'aktiv'),
(12,'EFH Buchs - Erdgeschoss',       'Hofweg 3',            '5033', 'Buchs',     'aktiv'),
(12,'EFH Buchs - Obergeschoss',      'Hofweg 3',            '5033', 'Buchs',     'aktiv');


INSERT INTO mitarbeiter (vorname, nachname, rolle, stundensatz_chf, aktiv, eintritt) VALUES
('Stefan',   'Bürgi',       'projektleiter', 145.00, TRUE,  '2018-03-01'),
('Andrea',   'Wyss',        'projektleiter', 142.00, TRUE,  '2020-09-15'),
('Reto',     'Hofstetter',  'elektriker',    105.00, TRUE,  '2015-06-01'),
('Patrick',  'Lüscher',     'elektriker',    105.00, TRUE,  '2017-04-12'),
('Daniel',   'Suter',       'elektriker',    102.00, TRUE,  '2019-08-01'),
('Marco',    'Bühler',      'elektriker',    100.00, TRUE,  '2021-02-15'),
('Jonas',    'Keller',      'monteur',        92.00, TRUE,  '2020-05-01'),
('Sven',     'Bachmann',    'monteur',        90.00, TRUE,  '2022-09-01'),
('Thomas',   'Eichenberger','monteur',        88.00, TRUE,  '2023-03-15'),
('Lukas',    'Frei',        'lehrling',       55.00, TRUE,  '2024-08-01'),
('Nico',     'Stalder',     'lehrling',       52.00, TRUE,  '2024-08-01'),
('Tim',      'Brunner',     'lehrling',       48.00, TRUE,  '2025-08-01'),
('Beatrice', 'Müller',      'planer',        118.00, TRUE,  '2019-11-01'),
('Michael',  'Roth',        'planer',        115.00, TRUE,  '2022-01-15'),
('Roger',    'Kunz',        'elektriker',    103.00, FALSE, '2014-02-01');


INSERT INTO lieferant (name, kontakt, telefon) VALUES
('Otto Fischer AG',          'Verkauf Aargau',     '+41 44 444 50 50'),
('Elektro-Material AG',      'Niederlassung Aarau','+41 62 837 12 12'),
('Bugnard SA',               'Romand Service',     '+41 21 643 78 00'),
('Schäfer Partner AG',       'Innendienst',        '+41 62 837 81 00'),
('Hager AG',                 'Vertrieb CH',        '+41 56 484 84 84'),
('Stäubli Electrical',       'Customer Center',    '+41 56 200 71 11'),
('Feller AG',                'Bestellservice',     '+41 44 728 71 11'),
('Demelectric AG',           'Verkauf',            '+41 44 925 11 11');


INSERT INTO material (bezeichnung, einheit, preis_chf, vorfertigung_faehig) VALUES
('NYM-J 3x1.5mm² Installationskabel',         'm',    1.85, FALSE),
('NYM-J 3x2.5mm² Installationskabel',         'm',    2.60, FALSE),
('NYM-J 5x2.5mm² Installationskabel',         'm',    4.20, FALSE),
('NYM-J 5x6mm² Kraftkabel',                   'm',    8.90, FALSE),
('Erdkabel TT 4x16mm²',                       'm',   14.50, FALSE),
('Leitungsschutzschalter 16A 1-polig',        'stk',  12.50, FALSE),
('Leitungsschutzschalter 16A 3-polig',        'stk',  38.00, FALSE),
('FI-Schutzschalter 40A/30mA',                'stk',  98.00, FALSE),
('Reiheneinbau-Verteilung 12TE',              'stk', 145.00, TRUE),
('Reiheneinbau-Verteilung 24TE',              'stk', 245.00, TRUE),
('Vorgefertigte Unterverteilung 48TE',        'stk', 1850.00, TRUE),
('Feller EDIZIOdue Schalter 1-fach',          'stk',  28.00, FALSE),
('Feller EDIZIOdue Steckdose T13',            'stk',  18.50, FALSE),
('Feller EDIZIOdue Steckdose T23',            'stk',  32.00, FALSE),
('Hager Verteilerschrank Univers 4-reihig',   'stk', 420.00, TRUE),
('LED-Panel 60x60 32W neutralweiss',          'stk',  85.00, FALSE),
('LED-Einbaustrahler 12W warmweiss',          'stk',  24.50, FALSE),
('Notbeleuchtung LED inkl. Batterie',         'stk', 175.00, FALSE),
('Brandmelder optisch funkvernetzt',          'stk',  68.00, FALSE),
('PV-Modul monokristallin 400W',              'stk', 195.00, FALSE),
('PV-Wechselrichter 10kW dreiphasig',         'stk', 2400.00, TRUE),
('Smart Meter Landis+Gyr E450',               'stk', 285.00, FALSE),
('KNX-Buskabel grün 2x2x0.8mm²',              'm',    3.20, FALSE),
('Installationsrohr M20 flexibel',            'm',    1.40, FALSE),
('Kabelkanal 60x40mm weiss',                  'm',    8.50, FALSE);


INSERT INTO material_lieferant (material_id, lieferant_id, preis_chf) VALUES
(1,1,1.85),(1,2,1.92),(1,4,1.88),
(2,1,2.60),(2,2,2.65),(2,4,2.58),
(3,1,4.20),(3,2,4.25),
(4,1,8.90),(4,2,8.95),
(5,1,14.50),(5,2,14.75),
(6,5,12.50),(6,1,12.80),
(7,5,38.00),(7,1,38.50),
(8,5,98.00),(8,1,99.50),
(9,5,145.00),(9,2,148.00),
(10,5,245.00),
(11,5,1850.00),
(12,7,28.00),(12,1,28.50),
(13,7,18.50),(13,1,19.00),
(14,7,32.00),(14,1,33.00),
(15,5,420.00),
(16,8,85.00),(16,2,87.00),
(17,8,24.50),(17,2,25.00),
(18,8,175.00),
(19,8,68.00),
(20,1,195.00),
(21,1,2400.00),
(22,6,285.00),(22,1,290.00),
(23,4,3.20),(23,2,3.30),
(24,4,1.40),(24,2,1.45),
(25,4,8.50);


INSERT INTO stundenrapport (mitarbeiter_id, baustelle_id, datum, stunden, taetigkeit)
SELECT
    ((g - 1) % 14) + 1 AS mitarbeiter_id,
    ((g - 1) % 30) + 1 AS baustelle_id,
    (DATE '2025-09-15' + ((g % 80) || ' days')::interval)::date AS datum,
    CASE (g % 10)
        WHEN 0 THEN 4.00
        WHEN 1 THEN 6.00
        WHEN 2 THEN 8.00
        WHEN 3 THEN 8.50
        WHEN 4 THEN 8.00
        WHEN 5 THEN 9.00
        WHEN 6 THEN 7.50
        WHEN 7 THEN 8.00
        WHEN 8 THEN 10.00
        ELSE 8.00
    END AS stunden,
    CASE (g % 8)
        WHEN 0 THEN 'Kabelzug'
        WHEN 1 THEN 'Verteiler montieren'
        WHEN 2 THEN 'Schalter und Steckdosen installieren'
        WHEN 3 THEN 'Beleuchtung montieren'
        WHEN 4 THEN 'Messung und Prüfung'
        WHEN 5 THEN 'KNX programmieren'
        WHEN 6 THEN 'Brandmelder installieren'
        ELSE 'PV-Modul Montage'
    END AS taetigkeit
FROM generate_series(1, 600) AS g;


INSERT INTO materialverbrauch (baustelle_id, material_id, menge, datum, vorgefertigt)
SELECT
    ((g - 1) % 30) + 1 AS baustelle_id,
    ((g - 1) % 25) + 1 AS material_id,
    CASE
        WHEN ((g - 1) % 25) + 1 IN (1,2,3,4,5,23,24,25) THEN (10 + (g % 100))::numeric
        WHEN ((g - 1) % 25) + 1 IN (9,10,11,15,21)      THEN (1 + (g % 3))::numeric
        ELSE (2 + (g % 20))::numeric
    END AS menge,
    (DATE '2025-09-20' + ((g % 75) || ' days')::interval)::date AS datum,
    (g % 4 = 0) AS vorgefertigt
FROM generate_series(1, 150) AS g;


SELECT 'kunde' AS tabelle, COUNT(*) AS anzahl FROM kunde
UNION ALL SELECT 'projekt',           COUNT(*) FROM projekt
UNION ALL SELECT 'baustelle',         COUNT(*) FROM baustelle
UNION ALL SELECT 'mitarbeiter',       COUNT(*) FROM mitarbeiter
UNION ALL SELECT 'lieferant',         COUNT(*) FROM lieferant
UNION ALL SELECT 'material',          COUNT(*) FROM material
UNION ALL SELECT 'material_lieferant',COUNT(*) FROM material_lieferant
UNION ALL SELECT 'stundenrapport',    COUNT(*) FROM stundenrapport
UNION ALL SELECT 'materialverbrauch', COUNT(*) FROM materialverbrauch;

