[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/zJjO-gwR)
# Exercice 2.3 : Calculer le chiffre d'affaires total par catégorie de produits du magasin de sport Run & Win avec SQL

## Contexte

Le réseau **"Run & Win RDC"** a survécu aux soldes grâce à tes requêtes, mais Mr Jhon fait face à un nouveau défi de taille. La direction à **Kinshasa** demande un rapport financier pour décider quels rayons agrandir et lesquels fermer à **Lubumbashi** et **Goma**.




## Objectifs pédagogiques

À la fin de cet exercice, tu seras capable de :

* **Regrouper les données** : Maîtriser le `GROUP BY` pour segmenter tes analyses par catégorie ou par ville.

* **Calculer des totaux** : Utiliser `SUM` pour obtenir le Chiffre d'Affaires (CA).

* **Analyser des tendances** : Utiliser `AVG` (moyenne) et `COUNT` (nombre d'articles) pour qualifier l'inventaire.

* **Nettoyer les sorties** : Utiliser `ROUND` pour ne pas afficher 15 chiffres après la virgule et des Alias (`AS`) pour des rapports professionnels.




## Modalités pédagogiques

* **Méthode** : SQL Agrégation & Calculs.

* **Durée** : 2 jours (Analyse financière > Requêtage > Synthèse).

* **Outils** : Ton client SQL favori (DBeaver, SQLite, etc.).

* **Collaboration** : Échangez sur le canal : "Pourquoi mon GROUP BY me renvoie une erreur quand j'oublie une colonne dans le SELECT ?".




## Travail à réaliser

Pour sauver le rapport annuel, Mr Jhon t'a laissé cette liste de questions urgentes sur ton bureau. Pour chaque question, tu dois écrire la requête SQL correspondante (utilisant les agrégations `SUM`, `AVG`, `COUNT` et `GROUP BY`) dans ton fichier `queries.sql`.

### 1. Le Chiffre d'Affaires "Tennis Premium"

>"Je veux savoir ce que nous rapporte réellement le Tennis. Peux-tu me donner le Chiffre d'Affaires total (somme des ventes) uniquement pour la catégorie 'Tennis' ?"

* **Compétence testée** : `SUM(quantite * prix)` + `WHERE` sur catégorie.

### 2. L'analyse "Stock Rando"

>"On parle beaucoup de la Rando à Goma. Donne-moi le nombre total d'articles en stock dont le nom contient 'Rando'. Je veux un seul chiffre global."

* **Compétence testée** : `SUM(stock)` + `LIKE '%Rando%'`.

### 3. Le dynamisme des "Villes Prioritaires"

>"On a investi à Bukavu et Matadi. Combien de clients avons-nous dans chacune de ces deux villes ? Affiche le nom de la ville et le nombre d'inscrits."

* **Compétence testée** : `COUNT(id_client)` + `GROUP BY ville` + `FILTER (Bukavu, Matadi)`.

### 4. Le panier moyen "Combat"

>"Pour les articles de sport de combat dont le prix est entre 20$ et 50$, quel est le prix moyen de ces articles ?"

* **Compétence testée** : `AVG(prix)` + `BETWEEN`.

### 5. La performance "Lubumbashi"

>"Dernière chose : pour nos clients de Lubumbashi inscrits avant 2025, quel est le nombre total de transactions (ventes) qu'ils ont générées ?"

* **Compétence testée** : `COUNT(id_vente)` + `JOIN` + `WHERE` multi-critères.

### 6. le chiffre d'affaires total par catégorie de produits du magasin




## Astuces de Data Analyst

* **La règle d'or du GROUP BY** : Toutes les colonnes présentes dans ton `SELECT` qui ne sont pas des fonctions d'agrégation (comme SUM ou AVG) doivent impérativement se retrouver dans ton `GROUP BY`.

* **Revenue vs Stock** : Le Chiffre d'Affaires se calcule sur les ventes effectuées (`quantite_vendue * prix`), pas sur ce qui reste en rayon !

* **Pense aux décimales** : Pour un manager, un prix à 45.666666$ n'est pas pro. Utilise `ROUND(..., 2)`.




## Livrables

* **Le fichier SQL** : `queries.sql` contenant les requêtes de calcul.

* **Le mini-rapport** : Un tableau récapitulatif du CA par catégorie.

* **Dépôt GitHub** : Dossier `sql-analytics`.

**Note pour la soumission** :

Le lien vers le repos Github sur lequel vous allez retrouver le fichier de base sur lequel travailler et ensuite déposer votre travail :

* Pour la classe 2026-janvier-da-soir-b

* Pour la classe 2026-janvier-da-midi-c

Après avoir déposé votre travail sur Github, veuillez copier l'url du repos Github et finaliser votre soumission en le soumettant sur Canvas.


