INSERT INTO CLIENTI (partita_iva, nome_azienda, luogo, email, telefono, data_registrazione)
VALUES
('11111111111', 'Snack Milano SRL', 'Milano', 'info@snackmilano.it', '021111111', '2023-01-15'),
('22222222222', 'Dolci Roma SPA', 'Roma', 'contatti@dolciroma.it', '062222222', '2023-02-10'),
('33333333333', 'Food Torino SRL', 'Torino', 'info@foodtorino.it', '011333333', '2023-03-05'),
('44444444444', 'Gusti Napoli SRL', 'Napoli', 'info@gustinapoli.it', '081444444', '2023-04-20'),
('55555555555', 'Break Time Bologna SRL', 'Bologna', 'info@breaktime.it', '051555555', '2023-05-12'),
('66666666666', 'Snack Express SRL', 'Firenze', 'info@snackexpress.it', '055666666', '2023-06-18'),
('77777777777', 'Vending Italia SPA', 'Verona', 'info@vendingitalia.it', '045777777', '2023-07-01'),
('88888888888', 'Quick Food SRL', 'Bari', 'info@quickfood.it', '080888888', '2023-07-25');


INSERT INTO SNACK (marca, categoria, prezzo, calorie)
VALUES
('Lay''s', 'Patatine', 1.50, 530),
('Pringles', 'Patatine', 2.20, 540),
('San Carlo', 'Patatine', 1.80, 520),
('Kinder', 'Cioccolato', 1.20, 560),
('Ferrero', 'Cioccolato', 1.50, 580),
('Mars', 'Cioccolato', 1.10, 570),
('Snickers', 'Cioccolato', 1.10, 590),
('Oreo', 'Biscotti', 1.30, 480),
('Ringo', 'Biscotti', 1.20, 470),
('Pan di Stelle', 'Biscotti', 1.80, 500),
('Tuc', 'Cracker', 1.40, 450),
('Crackers Saiwa', 'Cracker', 1.30, 430),
('Kinder Bueno', 'Cioccolato', 1.40, 570),
('Twix', 'Cioccolato', 1.10, 560),
('Haribo', 'Caramelle', 1.00, 350),
('Goleador', 'Caramelle', 0.80, 320),
('Cheetos', 'Snack salati', 1.60, 540),
('Fonzies', 'Snack salati', 1.70, 550),
('KitKat', 'Cioccolato', 1.20, 565),
('Gran Cereale', 'Biscotti', 2.00, 410);

INSERT INTO ORDINI (partita_iva, id_snack, quantita, data_ordine)
VALUES
('11111111111', 1, 50, '2024-01-10 10:30:00'),
('11111111111', 4, 30, '2024-01-15 11:00:00'),
('22222222222', 2, 40, '2024-01-18 09:45:00'),
('22222222222', 8, 25, '2024-01-20 14:10:00'),
('33333333333', 3, 60, '2024-02-02 16:20:00'),
('33333333333', 10, 20, '2024-02-05 10:00:00'),
('44444444444', 5, 35, '2024-02-12 12:30:00'),
('44444444444', 15, 80, '2024-02-14 09:00:00'),
('55555555555', 6, 45, '2024-03-01 15:45:00'),
('55555555555', 11, 55, '2024-03-04 11:15:00'),
('66666666666', 7, 50, '2024-03-10 10:10:00'),
('66666666666', 17, 40, '2024-03-12 14:40:00'),
('77777777777', 9, 70, '2024-03-20 09:30:00'),
('77777777777', 18, 65, '2024-03-22 13:20:00'),
('88888888888', 12, 30, '2024-04-01 16:00:00'),
('88888888888', 20, 25, '2024-04-03 10:50:00');
