use kont;

SELECT COUNT(*) FROM klient;

SELECT COUNT(*) FROM field_of_industry;

SELECT COUNT(*) FROM kontakty;

SELECT COUNT(*) FROM tip_klienta;

SELECT COUNT(id_district) FROM klient;


SELECT klient.id_klient, COUNT(kontakty.id_klient) AS x FROM  klient, kontakty
WHERE kontakty.id_klient = klient.id_klient
GROUP BY klient.id_klient;


SELECT klient.id_klient, COUNT(kontakty.id_klient) AS x, tip_klienta.tip_klienta AS tip FROM  klient, kontakty, tip_klienta
WHERE kontakty.id_klient = klient.id_klient AND klient.id_tip_klienta = tip_klienta.id_tip_klienta
GROUP BY klient.id_klient, tip_klienta.tip_klienta;


SELECT id_klient FROM kontakty
WHERE kontakty = '';