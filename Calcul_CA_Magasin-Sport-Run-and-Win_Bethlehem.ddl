-- 1. Chiffre d'Affaires total catégorie Tennis
SELECT ROUND(SUM(quantite * prix_unitaire), 2) AS CA_Tennis_Total
  FROM ventes
 WHERE categorie_produit = 'Tennis';
 -- 2. Total stock articles contenant Rando

SELECT SUM(stock) AS Total_Stock_Rando
  FROM produits
 WHERE nom_produit LIKE '%Rando%';
 -- 3. Nombre de clients à Bukavu et Matadi

SELECT ville,
       COUNT(id_client) AS Nombre_Inscrits
  FROM clients
 WHERE ville IN ('Bukavu', 'Matadi') 
 GROUP BY ville;
 -- 4. Prix moyen sport de combat entre 20 et 50

SELECT ROUND(AVG(prix), 2) AS Prix_Moyen_Combat
  FROM produits
 WHERE categorie = 'Combat' AND
       prix BETWEEN 20 AND 50;
       -- 5. Nombre total transactions Lubumbashi avant 2025

SELECT COUNT(id_vente) AS Total_Transactions_Lushi
  FROM ventes
 WHERE ville_client = 'Lubumbashi' AND
       date_inscription_client < '2025-01-01';
       -- 6. Chiffre d'affaires total par catégorie

SELECT categorie_produit,
       ROUND(SUM(quantite * prix_unitaire), 2) AS Chiffre_Affaires
  FROM ventes
 GROUP BY categorie_produit
 ORDER BY Chiffre_Affaires DESC;
