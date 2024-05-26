CREATE TABLE Obszar_Sprzedaży(ID_Obszaru int,Nazwa_Obszaru varchar(255), PRIMARY KEY(ID_Obszaru));

CREATE TABLE Kraj(ID_Kraju varchar(2),Nazwa_Kraju varchar(255),ID_Obszaru int, PRIMARY KEY(ID_Kraju),
        CONSTRAINT fk_Obszar_Kraj FOREIGN KEY(ID_Obszaru) REFERENCES Obszar_Sprzedaży(ID_Obszaru));

CREATE TABLE Sprzedawca(ID_sprzedawcy int,ID_Obszaru int, Imię varchar(255), Nazwisko varchar(255), PRIMARY KEY (ID_sprzedawcy), 
        CONSTRAINT fk_Obszar_Sprzed FOREIGN KEY(ID_Obszaru) REFERENCES Obszar_Sprzedaży(ID_Obszaru));

CREATE TABLE Klient(ID_Klienta int, Nazwa_Klienta varchar(255),ID_sprzedawcy int, VAT int,ID_Kraju varchar(2),PRIMARY KEY(ID_Klienta),  
        CONSTRAINT fk_Kraj_Klient FOREIGN KEY(ID_Kraju) REFERENCES Kraj(ID_Kraju),
        CONSTRAINT fk_Sprzedawca FOREIGN KEY(ID_sprzedawcy) REFERENCES Sprzedawca(ID_sprzedawcy));

CREATE TABLE Producent(ID_Producenta int,Nazwa_Firmy varchar(255),ID_Kraju varchar(2), VAT int, PRIMARY KEY (ID_Producenta),
        CONSTRAINT fk_Kraj_Prod FOREIGN KEY(ID_Kraju) REFERENCES Kraj(ID_Kraju));

CREATE TABLE Typ_Produktu(ID_Typu_prod int, Nazwa_Typu varchar(255),PRIMARY KEY(ID_Typu_prod));

CREATE TABLE Produkt(ID_Produktu int, Nazwa_Produktu varchar(255),ID_Typu_prod int,ID_Producenta int, PRIMARY KEY(ID_Produktu),
        CONSTRAINT fk_Producent FOREIGN KEY(ID_Producenta) REFERENCES Producent(ID_Producenta),
        CONSTRAINT fk_Typ FOREIGN KEY(ID_Typu_prod) REFERENCES Typ_Produktu(ID_Typu_prod));

CREATE TABLE Sprzedaż(ID_sprzed PRIMARY KEY,ID_Produktu int,ID_Klienta int,ilość int,cena_za_sztuke decimal(8,2),waluta varchar(3),Data_sprzedaży timestamp,
        CONSTRAINT fk_Produkt FOREIGN KEY(ID_Produktu) REFERENCES Produkt(ID_Produktu),
        CONSTRAINT fk_Klient FOREIGN KEY(ID_Klienta) REFERENCES Klient(ID_Klienta),
        CONSTRAINT pk_sprzedaż PRIMARY KEY(ID_Produktu,ID_Klienta));
