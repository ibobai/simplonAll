CREATE TABLE IF NOT EXISTS `Sieges` (
	`siegeID`int(11) NOT NULL AUTO_INCREMENT,

	/* fk */
	`infoGeneralID` int(11) NOT NULL,
	`formateurID` int(11) NOT NULL,
	`directeurID` int(11) NOT NULL,
	`formationID` int(11) NOT NULL,
	/* fk */

	 PRIMARY KEY (`siegeID`)
);

CREATE TABLE IF NOT EXISTS `Directeurs` (
	
	
	`directeurID` int(11) NOT NULL AUTO_INCREMENT,
	/* fk */
	`infoPersoID` int(11) NOT NULL,
	`competenceID`int(11) NOT NULL,
	`roleID` int(11) NOT NULL,
	/* fk */
	
	PRIMARY KEY (`directeurID`)
);

CREATE TABLE IF NOT EXISTS `adresses` (
	`adresseID` int(11) NOT NULL AUTO_INCREMENT,
	  
  	`nomDeRue` varchar(50) NOT NULL,
 	 `numDeRue` varchar(50) NOT NULL,
 	 `codePostal` int(11) NOT NULL,
 	 `ville` varchar(50)NOT NULL,
  	`sector` varchar(50),

	PRIMARY KEY(`adresseID`)
	

);


CREATE TABLE IF NOT EXISTS `formateurs` (
	 `formateurID` int(11) NOT NULL AUTO_INCREMENT,
	 
	 /* fk */
  	 `infoPersoID` int(11) NOT NULL,
  	 `roleID` int(11) NOT NULL,
         /* fk */
	PRIMARY KEY (`formateurID`)
);



CREATE TABLE IF NOT EXISTS `infoPerso` (
	`infoPersoID` int(11) NOT NULL AUTO_INCREMENT,

	`nom` varchar(100) NOT NULL,
  	`prenom` varchar(100) NOT NULL,
 	 `email` varchar(100) NOT NULL,
  	`tel` varchar(50) NOT NULL,
	`dateDeEntree` date NOT NULL,
  	`dateDeSortie` date NOT NULL,
  	`animalTotem` varchar(100),

	/* fk */
  	`adresseID` int(11),
  	`competenceID` int(11),
 	/* fk */

	PRIMARY KEY (`infoPersoID`)
);


CREATE TABLE  IF NOT EXISTS `infoGeneral` (
  `infoGeneralID` int(11) NOT NULL AUTO_INCREMENT,
   /* fk */
  `adresseID` int(11) NOT NULL,
   /* fk */
	
  `description`  text,
  `dateDeDebut` date NOT NULL,
  `dateDeFin` date NOT NULL,
    
    PRIMARY KEY(`infoGeneralID` )
 
);

CREATE TABLE IF NOT EXISTS `competences` (
  `competenceID` int(11) NOT NULL AUTO_INCREMENT,
  
  `nom` varchar(100) NOT NULL,
  `anneExperience` varchar(10) NOT NULL,
  `dateObtention` date NOT NULL,
  `description` text,
  PRIMARY KEY(`competenceID`)
);

CREATE TABLE IF NOT EXISTS `formations` (
  `formationID` int(11) NOT NULL AUTO_INCREMENT,
   
  /* fk */
  `infoGeneralID` int(11) NOT NULL,
  `apprenantID` int(11) NOT NULL,
  `formateurID` int(11) NOT NULL,
 /*  fk */
 PRIMARY KEY(`formationID`)
  
);

CREATE TABLE IF NOT EXISTS `roles` (
  `roleID` int(11) NOT NULL AUTO_INCREMENT,
  
  `nom` varchar(100) NOT NULL,
  `desc` text,
   PRIMARY KEY (`roleID`)
);

CREATE TABLE IF NOT EXISTS `responsPedago` (
  `responsPedagoID` int(11) NOT NULL AUTO_INCREMENT,
  /* fk */
  `infoPersoID` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
   /* fk */
   PRIMARY KEY (`responsPedagoID`)
);

CREATE TABLE IF NOT EXISTS `apprenants` (
  `apprenantID` int(11) NOT NULL AUTO_INCREMENT,

  /* fk */	
  `infoPersoID` int(11) NOT NULL,
  `adresseID` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
   PRIMARY KEY (`apprenantID`)

);


