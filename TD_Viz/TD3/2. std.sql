CREATE SCHEMA IF NOT EXISTS stg;

CREATE OR REPLACE TABLE stg.stg_retour_commande AS
SELECT 
	"ID commande" AS id_commande,
	if("Retourné" = 'Oui', 1, 0)::int AS est_retourne,
FROM raw.retours;

CREATE OR REPLACE TABLE stg.stg_commande AS
SELECT
	"ID ligne" AS id_ligne,
	"ID commande" AS id_commande,
	strptime("Date de commande", '%m/%d/%Y')::date dt_commande,
	strptime("Date d'expédition", '%m/%d/%Y')::date dt_expedition,
	"Statut commande" AS status,
	"ID client" AS id_client,
	"Nom du client" AS client_nom,
	Segment AS client_segment,
	Ville AS ville_nom,
	Région AS ville_region,
	Pays AS ville_pays,
	"Zone géographique" AS ville_zone,
	"ID produit" AS id_produit,
	Catégorie AS produit_categorie,
	"Sous-catégorie" AS produit_soucategorie,
	"Nom du produit" AS produit_nom,
	"Montant des ventes" AS motant_vente,
	Quantité AS quantite,
	Remise AS remise,
	Profit AS profit
FROM raw.achats;

CREATE OR REPLACE TABLE stg.stg_zone_has_responsable AS
SELECT
	"Zone géographique" AS "zone",
	"Responsable régional" AS responsable
FROM raw.personnes;