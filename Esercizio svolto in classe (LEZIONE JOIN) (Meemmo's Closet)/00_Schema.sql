CREATE TABLE `acquisti` (
  `id_acquisto` int NOT NULL AUTO_INCREMENT,
  `nome_prodotto` varchar(100) NOT NULL,
  `sku` varchar(20) DEFAULT NULL,
  `categoria` enum('sneakers','vestiti') NOT NULL,
  `prezzo` decimal(10,2) NOT NULL,
  `sito` varchar(100) DEFAULT NULL,
  `taglia` varchar(10) DEFAULT NULL,
  `quantita` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_acquisto`)
);

CREATE TABLE `prodotti` (
  `id_prodotto` int NOT NULL AUTO_INCREMENT,
  `nome_prodotto` varchar(100) NOT NULL,
  `sku` varchar(20) DEFAULT NULL,
  `categoria` enum('sneakers','vestiti') NOT NULL,
  `prezzo` decimal(10,2) NOT NULL,
  `taglia` varchar(10) DEFAULT NULL,
  `quantita_disponibile` int DEFAULT '0',
  PRIMARY KEY (`id_prodotto`)
);

CREATE TABLE `vendite` (
  `id_vendita` int NOT NULL AUTO_INCREMENT,
  `id_prodotto` int NOT NULL,
  `nome_prodotto` varchar(100) NOT NULL,
  `sku` varchar(20) DEFAULT NULL,
  `categoria` enum('sneakers','vestiti') NOT NULL,
  `quantità` int NOT NULL,
  `taglia` varchar(10) DEFAULT NULL,
  `piattaforma_vendita` varchar(50) DEFAULT NULL,
  `prezzo_vendita` decimal(10,2) DEFAULT NULL,
  `nazione` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_vendita`)
);

CREATE TABLE `clienti` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(100) NOT NULL,
  `piattaforma_acquisto` varchar(50) DEFAULT NULL,
  `id_vendita` int NOT NULL,
  `nazione_cliente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
);
