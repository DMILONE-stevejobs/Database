--vendite con il relativo prodotto--
SELECT
    v.nome_prodotto,
    v.quantità,
    v.prezzo_vendita,
    p.quantita_disponibile
FROM vendite v
INNER JOIN prodotti p
    ON v.id_prodotto = p.id_prodotto;

--Prodotti mai venduti--
SELECT
    p.nome_prodotto,
    p.quantita_disponibile,
    v.prezzo_vendita
FROM prodotti p
LEFT JOIN vendite v
    ON p.sku = v.sku
WHERE v.sku IS NULL;


--Vendite superiori al 300% di guadagno--
SELECT
    p.nome_prodotto,
    p.prezzo AS prezzo_listino,
    v.prezzo_vendita
FROM prodotti p
JOIN vendite v
    ON v.prezzo_vendita > p.prezzo * 3;
