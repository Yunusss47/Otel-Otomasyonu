-- 1. Müþteri Tablosu
CREATE TABLE Musteriler (
    MusteriID INT PRIMARY KEY IDENTITY,
    Ad NVARCHAR(50),
    Soyad NVARCHAR(50),
    Telefon NVARCHAR(20),
    Mail NVARCHAR(100),
    Tc NVARCHAR(11)
);

-- 2. Oda Tablosu
CREATE TABLE Odalar (
    OdaNo INT PRIMARY KEY,
    Durum NVARCHAR(10) -- "Dolu" ya da "Boþ"
);

-- 3. Rezervasyon Tablosu
CREATE TABLE Rezervasyonlar (
    RezervasyonID INT PRIMARY KEY IDENTITY,
    MusteriID INT FOREIGN KEY REFERENCES Musteriler(MusteriID),
    OdaNo INT FOREIGN KEY REFERENCES Odalar(OdaNo),
    GirisTarihi DATE,
    CikisTarihi DATE
);

-- 4. Kullanýcý Tablosu (Giriþ ekraný için)
CREATE TABLE Kullanicilar (
    KullaniciID INT PRIMARY KEY IDENTITY,
    KullaniciAdi NVARCHAR(50),
    Sifre NVARCHAR(50)
);

-- Örnek kullanýcý
INSERT INTO Kullanicilar (KullaniciAdi, Sifre) VALUES ('admin', '1234');

-- Örnek odalar
INSERT INTO Odalar (OdaNo, Durum) VALUES 
(101, 'Boþ'), 
(102, 'Boþ'), 
(103, 'Boþ');

