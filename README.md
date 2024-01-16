# PS-2024-Mini-projet-stockage-donnees

## 📚 Projet Scolaire | Data Management

Janvier 2024

Groupe : Juliette

### 📌 Consignes du projet : 

En groupe de 2 ou 3 :

Choisir une thématique qui vous intéresse
Choisir un sgbd
Définir des tables et des relations pour le représenter (minimum 3-4 tables)
Implémenter un crud dessus
Versionner le tout dans un dépôt git

### 🐱 Mon projet :

Table "Animaux" :
ID (Clé primaire)
Nom
Espece
Age
Sexe
Proprietaire_ID (Clé étrangère référençant la table "Proprietaires")


Table "Proprietaires" :
ID (Clé primaire)
Nom
Adresse
Contact


Table "Veterinaires" :
ID (Clé primaire)
Nom
Specialite
Contact


Table "VisitesVet" :
ID (Clé primaire)
Animal_ID (Clé étrangère référençant la table "Animaux")
Veterinaire_ID (Clé étrangère référençant la table "Veterinaires")
Date
Raison
Traitement



Ces tables représentent une structure simple pour gérer des informations sur des animaux, leurs propriétaires, des vétérinaires, et les visites vétérinaires associées. La table "Animaux" a une clé étrangère "Proprietaire_ID" qui référence la table "Proprietaires". La table "VisitesVet" a deux clés étrangères, "Animal_ID" et "Veterinaire_ID", qui référencent respectivement les tables "Animaux" et "Veterinaires".


### 💻 Applications et langages utilisés :

+ DataGrip
+ SQLite



## 🌸 Merci !
© J-IFT
