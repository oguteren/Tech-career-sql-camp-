CREATE DATABASE BitirmeProjesi;
GO

USE BitirmeProjesi;
GO

CREATE TABLE Müsteriler (
    id INT PRIMARY KEY IDENTITY(1,1),
    ad NVARCHAR(50) NOT NULL,
    soyad NVARCHAR(50) NOT NULL,
    email NVARCHAR(100) NOT NULL ,
    sehir NVARCHAR(50),
    kayit_tarihi DATETIME DEFAULT GETDATE()
);

CREATE TABLE Kategori (
    id INT PRIMARY KEY IDENTITY(1,1),
    ad NVARCHAR(50) NOT NULL
);

CREATE TABLE Satici (
    id INT PRIMARY KEY IDENTITY(1,1),
    ad NVARCHAR(50) NOT NULL,
    adres NVARCHAR(150)
);

CREATE TABLE URUN (
    id INT PRIMARY KEY IDENTITY(1,1),
    ad NVARCHAR(100) NOT NULL,
    fiyat DECIMAL(10,2) NOT NULL CHECK (fiyat>=0) ,
    stok INT DEFAULT 0,
    kategori_id INT NOT NULL,
    satici_id INT NOT NULL,
    FOREIGN KEY (kategori_id) REFERENCES Kategori(id),
    FOREIGN KEY (satici_id) REFERENCES Satici(id)
);

CREATE TABLE Siparis (
    id INT PRIMARY KEY IDENTITY(1,1),
    müsteri_id INT NOT NULL,
    tarih DATETIME DEFAULT GETDATE(),
    toplam_tutar DECIMAL(10,2) NOT NULL CHECK(toplam_tutar>=0),
    odeme_turu NVARCHAR(50),
    FOREIGN KEY (müsteri_id) REFERENCES Müsteriler(id)
);

CREATE TABLE Siparis_Detay (
    id INT PRIMARY KEY IDENTITY(1,1),
    siparis_id INT NOT NULL,
    urun_id INT NOT NULL,
    adet INT NOT NULL,
    fiyat DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (siparis_id) REFERENCES Siparis(id),
    FOREIGN KEY (urun_id) REFERENCES URUN(id)
);


