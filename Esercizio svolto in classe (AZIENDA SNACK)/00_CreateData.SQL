CREATE TABLE CLIENTI (
    partita_iva VARCHAR(11) PRIMARY KEY,
    nome_azienda VARCHAR(100) NOT NULL,
    luogo VARCHAR(100),
    email VARCHAR(100),
    telefono VARCHAR(20),
    data_registrazione DATE
    );

CREATE TABLE SNACK (
    id_snack INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(50) NOT NULL,
    categoria VARCHAR(50),
    prezzo DECIMAL(6,2),
    calorie INT
);

CREATE TABLE ORDINI (
    ->     id_ordine INT PRIMARY KEY AUTO_INCREMENT,
    ->     partita_iva VARCHAR(11),
    ->     id_snack INT,
    ->     quantita INT NOT NULL,
    data_ordine DATE, 
    FOREIGN KEY (partita_iva) REFERENCES CLIENTI(partita_iva),
    FOREIGN KEY (id_snack) REFERENCES SNACK(id_snack)
);

