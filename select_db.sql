/*Wyświetl nazwy wszystkich klientów z Polski*/
SELECT Nazwa_Klienta FROM klient WHERE ID_Kraju = 'PL';
/*Wyświetl wszystkich klientów, których obsługuje Marcin Kowalski*/
SELECT Nazwa_Klienta FROM klient WHERE ID_sprzedawcy = 121;
/*Wyświetl wszystkich klientów, i sprzedawców im przypisanych*/
SELECT Nazwa_Klienta,Imię || ' ' || Nazwisko AS Sprzedawca FROM klient INNER JOIN sprzedawca ON klient.ID_sprzedawcy = sprzedawca.ID_sprzedawcy;
/*Wyświetl wszystkich klientów, i sprzedawców im przypisanych, nie używając INNER JOIN*/
SELECT Nazwa_Klienta,sprzedawca.Nazwisko as nazwisko_sprzedawcy FROM klient, sprzedawca WHERE klient.ID_sprzedawcy = sprzedawca.ID_sprzedawcy;