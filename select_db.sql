/*Wyświetl nazwy wszystkich klientów z Polski*/
select Nazwa_Klienta from klient where ID_Kraju = 'PL';
/*Wyświetl wszystkich klientów, których obsługuje Marcin Kowalski*/
select Nazwa_Klienta from klient where ID_sprzedawcy = 121;
/*Wyświetl wszystkich klientów, i sprzedawców im przypisanych*/
select Nazwa_Klienta,Imię || ' ' || Nazwisko as Sprzedawca from klient inner join sprzedawca on klient.ID_sprzedawcy = sprzedawca.ID_sprzedawcy;
/*Wyświetl wszystkich klientów, i sprzedawców im przypisanych, nie używając INNER JOIN*/
select Nazwa_Klienta,sprzedawca.imię || ' ' || sprzedawca.Nazwisko as Sprzedawca from klient, sprzedawca where klient.ID_sprzedawcy = sprzedawca.ID_sprzedawcy;
/*Wyświetl ilość wszystkich dokonanych transakcji*/
select count(*) from sprzedaż;
/*Wyświetl jakie kraje są w bazie i w jakiej ilości*/
select ID_Kraju as Kraj,count(ID_Kraju) as "Ilość w bazie" from Klient group by ID_Kraju;
/*Wyświetl  łączny przychód z wszystkich transakcji, pogrupowane według walut*/
select waluta, SUM(ilość*cena_za_sztuke) as przychód from sprzedaż group by waluta;
/*Wyświetl średni czas między transakcjami*/
select (MAX(data_sprzedaży)-MIN(data_sprzedaży))/count(*) as "Średni czas między transakcjami" from sprzedaż;
/*Wyświetl przychód w danym miesiącu z uwzględnieniem waluty, posortuj na podstawie daty*/
select substring(cast(data_sprzedaży as text) from 1 for 7) as data,waluta,SUM(ilość*cena_za_sztuke) as przychód  from sprzedaż group by data, waluta;
/*Wyświetl wszystkie produkty, których typ ma nazwę 'Wódka'*/
select nazwa_produktu from produkt inner join typ_produktu on produkt.id_typu_prod = typ_produktu.id_typu_prod where typ_produktu.nazwa_typu like 'Wódka';










