/*sprawdzam czy mogę dodać ujemną cenę na produkcie*/
insert into sprzedaż(id_produktu,id_klienta,ilość,cena_za_sztuke,waluta,data_sprzedaży) values (7771, 1003,10,-10.00,'USD','2024-06-15 10:00:00');
/*sprawdzam czy mogę dodać datę większą niż 'dzisiaj'*/
INSERT INTO sprzedaż(id_produktu,id_klienta,ilość,cena_za_sztuke,waluta,data_sprzedaży) VALUES (7774,1005,2,100.00,'PLN','2040-08-17 11:00:00');
