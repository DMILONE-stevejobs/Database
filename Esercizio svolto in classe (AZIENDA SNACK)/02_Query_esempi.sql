-- Esercizi presi dal documento fornito dal professore

--1. Mostrare tutto il contenuto della tabella.
SELECT * FROM CLIENTI;

--Mostrare solo il contenuto di alcune colonne della tabella.
SELECT luogo, email
FROM CLIENTI;

-- FILTRARE (LOGICA SEMPLICE)
-- Trova i clienti con sede a Milano
SELECT * FROM CLIENTI
WHERE luogo = 'Milano';

--Trova tutti gli snack al cioccolato che costano più di 1.20 euro
SELECT * FROM snack
WHERE categoria = 'Cioccolato'
AND prezzo > 1.20;

--Trova gli snack o al cioccolato o crackers
SELECT * FROM SNACK
WHERE categoria = 'Cioccolato'
OR categoria = 'Cracker';

--Trova i clienti che non hanno sede a Milano
SELECT * FROM clienti
WHERE NOT luogo = 'Milano';

--Trova gli snack con calorie comprese tra 500 e 530
SELECT * FROM snack
WHERE calorie BETWEEN 500 AND 530;

--Trova gli studenti con residenza a Catania o Palermo.
SELECT * FROM CLIENTI
WHERE luogo IN ('Milano', 'Bologna', 'Roma');

--Trova i clienti la quale azienda è una SPA.
SELECT * FROM CLIENTI
WHERE nome_azienda LIKE '%SPA';







-- Esercizi utili all'applicazione della teoria studiata in classe
-- Visualizzare gli ordini dal più vecchio al più recente
-- Per servire prima i clienti che hanno effettuato l'ordine prima
SELECT 
    id_ordine,
    partita_iva,
    id_snack,
    quantita,
    data_ordine
FROM ORDINI
ORDER BY data_ordine ASC;


-- Identificare gli snack più richiesti dai clienti
-- Sommare tutte le quantità ordinate per ciascun snack
SELECT 
    id_snack,
    (SELECT marca FROM SNACK s WHERE s.id_snack = o.id_snack) AS marca,
    (SELECT categoria FROM SNACK s WHERE s.id_snack = o.id_snack) AS categoria,
    SUM(quantita) AS totale_ordinato
FROM ORDINI o
GROUP BY id_snack
ORDER BY totale_ordinato DESC;


-- Calcolare quanto ha speso ogni cliente
-- Moltiplicare la quantità di ciascun snack per il prezzo e sommare per cliente
SELECT 
    partita_iva,
    (SELECT nome_azienda FROM CLIENTI c WHERE c.partita_iva = o.partita_iva) AS nome_azienda,
    SUM(quantita * (SELECT prezzo FROM SNACK s WHERE s.id_snack = o.id_snack)) AS totale_speso
FROM ORDINI o
GROUP BY partita_iva
ORDER BY totale_speso DESC;


