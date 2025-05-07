CREATE SCHEMA IF NOT EXISTS raw;

CREATE OR REPLACE TABLE raw.retours AS
FROM read_xlsx(
	"C:\Users\zhubo\OneDrive\Devoir\[INFO - M1 MIAGE - S2] CM Analyse et visualisation de données\TD_Viz\TD3\Hypermarche.xlsx",
	sheet = "Retours");

CREATE OR REPLACE TABLE raw.achats AS
FROM read_xlsx(
	"C:\Users\zhubo\OneDrive\Devoir\[INFO - M1 MIAGE - S2] CM Analyse et visualisation de données\TD_Viz\TD3\Hypermarche.xlsx",
	sheet = "Achats");

CREATE OR REPLACE TABLE raw.personnes AS
FROM read_xlsx(
	"C:\Users\zhubo\OneDrive\Devoir\[INFO - M1 MIAGE - S2] CM Analyse et visualisation de données\TD_Viz\TD3\Hypermarche.xlsx",
	sheet = "Personnes");