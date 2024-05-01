INSERT INTO obszar_sprzedaży(ID_Obszaru,Nazwa_Obszaru) VALUES (1111,'Europa');
INSERT INTO obszar_sprzedaży(ID_Obszaru,Nazwa_Obszaru) VALUES (1112,'Azja');
INSERT INTO obszar_sprzedaży(ID_Obszaru,Nazwa_Obszaru) VALUES (1113,'Ameryka');

INSERT INTO kraj(ID_Kraju,Nazwa_Kraju,ID_Obszaru) VALUES ('PL','Polska',1111);
INSERT INTO kraj(ID_Kraju,Nazwa_Kraju,ID_Obszaru) VALUES ('DE','Niemcy',1111);
INSERT INTO kraj(ID_Kraju,Nazwa_Kraju,ID_Obszaru) VALUES ('JP','Japonia',1112);
INSERT INTO kraj(ID_Kraju,Nazwa_Kraju,ID_Obszaru) VALUES ('CN','Chiny',1112);
INSERT INTO kraj(ID_Kraju,Nazwa_Kraju,ID_Obszaru) VALUES ('US','Stany_Zjednoczo',1113);
INSERT INTO kraj(ID_Kraju,Nazwa_Kraju,ID_Obszaru) VALUES ('CA','Kanada',1113);

INSERT INTO sprzedawca(ID_sprzedawcy,ID_Obszaru,Imię,Nazwisko) VALUES (121,1111,'Marcin','Kowalski');
INSERT INTO sprzedawca(ID_sprzedawcy,ID_Obszaru,Imię,Nazwisko) VALUES (122,1112,'Ching','Cheng');
INSERT INTO sprzedawca(ID_sprzedawcy,ID_Obszaru,Imię,Nazwisko) VALUES (123,1113,'Justin','Johnson');

INSERT INTO klient(ID_Klienta,Nazwa_Klienta,ID_sprzedawcy,VAT,ID_Kraju) VALUES (1001,'Gospodarstwo Rolne Buda',121,1234567890,'PL');
INSERT INTO klient(ID_Klienta,Nazwa_Klienta,ID_sprzedawcy,VAT,ID_Kraju) VALUES (1002,'German Beer Company',121,1234567891,'DE');
INSERT INTO klient(ID_Klienta,Nazwa_Klienta,ID_sprzedawcy,VAT,ID_Kraju) VALUES (1003,'SUSHI_SAKE INDUSTRIES',122,1234567892,'JP');
INSERT INTO klient(ID_Klienta,Nazwa_Klienta,ID_sprzedawcy,VAT,ID_Kraju) VALUES (1004,'Ching Cheng FamilyCompany',122,1234567893,'CN');
INSERT INTO klient(ID_Klienta,Nazwa_Klienta,ID_sprzedawcy,VAT,ID_Kraju) VALUES (1005,'BIG Whiskey Company',123,1234567894,'US');
INSERT INTO klient(ID_Klienta,Nazwa_Klienta,ID_sprzedawcy,VAT,ID_Kraju) VALUES (1006,'Frozen Vodka Industries',123,1234567895,'CA');

INSERT INTO producent(ID_Producenta,Nazwa_Firmy,ID_Kraju,VAT) VALUES (22220,'Destilation Station','US',1234567896);
INSERT INTO producent(ID_Producenta,Nazwa_Firmy,ID_Kraju,VAT) VALUES (22221,'Wódka Wódeczka','PL',1234567897);
INSERT INTO producent(ID_Producenta,Nazwa_Firmy,ID_Kraju,VAT) VALUES (22222,'SAKE MAKERS','JP',1234567898);

INSERT INTO typ_produktu(ID_Typu_prod,Nazwa_Typu) VALUES (9990,'Wódka');
INSERT INTO typ_produktu(ID_Typu_prod,Nazwa_Typu) VALUES (9991,'Wino_Czerwone');
INSERT INTO typ_produktu(ID_Typu_prod,Nazwa_Typu) VALUES (9992,'Wino_Białe');
INSERT INTO typ_produktu(ID_Typu_prod,Nazwa_Typu) VALUES (9993,'Piwo');
INSERT INTO typ_produktu(ID_Typu_prod,Nazwa_Typu) VALUES (9994,'Cydr');
INSERT INTO typ_produktu(ID_Typu_prod,Nazwa_Typu) VALUES (9995,'Whiskey');
INSERT INTO typ_produktu(ID_Typu_prod,Nazwa_Typu) VALUES (9996,'Dżin');
INSERT INTO typ_produktu(ID_Typu_prod,Nazwa_Typu) VALUES (9997,'Sake');

INSERT INTO produkt(ID_Produktu,Nazwa_Produktu,ID_Typu_prod,ID_Producenta) VALUES (7770,'Wesoła Jaskinia',9990,22221);
INSERT INTO produkt(ID_Produktu,Nazwa_Produktu,ID_Typu_prod,ID_Producenta) VALUES (7771,'Make you smile!',9993,22220);
INSERT INTO produkt(ID_Produktu,Nazwa_Produktu,ID_Typu_prod,ID_Producenta) VALUES (7772,'BEST SAKE!',9997,22222);
INSERT INTO produkt(ID_Produktu,Nazwa_Produktu,ID_Typu_prod,ID_Producenta) VALUES (7773,'Mamma M.I.A!',9995,22220);
INSERT INTO produkt(ID_Produktu,Nazwa_Produktu,ID_Typu_prod,ID_Producenta) VALUES (7774,'ZłotyDŻIN',9996,22221);
INSERT INTO produkt(ID_Produktu,Nazwa_Produktu,ID_Typu_prod,ID_Producenta) VALUES (7775,'SUSHI WINE',9992,22222);

INSERT INTO sprzedaż(ID_Produktu,ID_Klienta,ilość,cena_za_sztuke,waluta,Data_sprzedaży) VALUES (7770,1001,100,30,'PLN','2024-01-01 18:20:23');
INSERT INTO sprzedaż(ID_Produktu,ID_Klienta,ilość,cena_za_sztuke,waluta,Data_sprzedaży) VALUES (7771,1002,50,1,'EUR','2024-01-10 12:03:14');
INSERT INTO sprzedaż(ID_Produktu,ID_Klienta,ilość,cena_za_sztuke,waluta,Data_sprzedaży) VALUES (7772,1003,1000,2500,'YEN','2024-03-02 00:59:15');
INSERT INTO sprzedaż(ID_Produktu,ID_Klienta,ilość,cena_za_sztuke,waluta,Data_sprzedaży) VALUES (7773,1004,200,120,'CNY','2024-04-01 17:42:01');
INSERT INTO sprzedaż(ID_Produktu,ID_Klienta,ilość,cena_za_sztuke,waluta,Data_sprzedaży) VALUES (7774,1005,20000,20,'USD','2024-04-15 10:28:03');
INSERT INTO sprzedaż(ID_Produktu,ID_Klienta,ilość,cena_za_sztuke,waluta,Data_sprzedaży) VALUES (7775,1006,5230,30,'CAD','2024-05-01 17:49:59');


