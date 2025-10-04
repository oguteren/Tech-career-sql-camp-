/*
Müsteriler, Urun,sipariş verilerinin eklenmesi ve kontorlü sorguları 
*/
 --Müsteriler verilerinin eklenmesi 
 use BitirmeProjesi;
 GO
INSERT INTO Müsteriler ( ad, soyad, email, sehir, kayit_tarihi) VALUES
( 'Tomurcuk', 'Soylu', 'tomurcuk.soylu@example.com', 'North Tahir', '2023-12-11'),
('İmam', 'Aksu', 'i̇mam.aksu@example.com', 'Lake Özdalberg', '2025-07-16'),
( 'Gümüştekin', 'Çamurcuoğlu', 'gümüştekin.çamurcuoğlu@example.com', 'Nuratown', '2025-09-25'),
( 'Süsen', 'Çetin', 'süsen.çetin@example.com', 'West Dağistan', '2024-07-04'),
( 'Esenbay', 'Ergül', 'esenbay.ergül@example.com', 'East Duhahaven', '2025-03-20'),
( 'Lutfi', 'Durmuş', 'lutfi.durmuş@example.com', 'South Nurser', '2024-07-30'),
( 'Çisem', 'Eraslan', 'çisem.eraslan@example.com', 'North Cansinfort', '2023-10-15'),
( 'Tekbay', 'Öcalan', 'tekbay.öcalan@example.com', 'Tevetoğlufort', '2023-11-18'),
( 'Esna', 'Güçlü', 'esna.güçlü@example.com', 'New Müslum', '2025-03-24'),
( 'Vefia', 'İnönü', 'vefia.i̇nönü@example.com', 'Çalımstad', '2024-11-20'),
( 'Güverçin', 'Arslan', 'güverçin.arslan@example.com', 'South Melaha', '2024-02-01'),
( 'Eskinalp', 'Eraslan', 'eskinalp.eraslan@example.com', 'Turgutburgh', '2024-12-03'),
( 'Fami', 'Yılmaz', 'fami.yılmaz@example.com', 'Yorulmazview', '2024-10-29'),
( 'Oğurata', 'Tarhan', 'oğurata.tarhan@example.com', 'Hançerfort', '2024-02-18'),
( 'Benek', 'Bilge', 'benek.bilge@example.com', 'Lake Esenbay', '2024-04-07'),
( 'Aybet', 'Yorulmaz', 'aybet.yorulmaz@example.com', 'Mengihaven', '2025-09-25'),
( 'Feyha', 'Arslan', 'feyha.arslan@example.com', 'South Durmuşali', '2024-04-19'),
( 'Fahrullah', 'Gülen', 'fahrullah.gülen@example.com', 'Tuğcanberg', '2024-01-27'),
( 'Abdulmenaf', 'İhsanoğlu', 'abdulmenaf.i̇hsanoğlu@example.com', 'South Beyler', '2023-10-03'),
( 'Ayten', 'Tarhan', 'ayten.tarhan@example.com', 'Nefiyemouth', '2025-08-02'),
( 'Kiramettin', 'Çamurcuoğlu', 'kiramettin.çamurcuoğlu@example.com', 'North Abdülsamedburgh', '2024-06-12'),
( 'Efe', 'Durdu', 'efe.durdu@example.com', 'North Dirican', '2024-07-12'),
( 'Başok', 'Çamurcuoğlu', 'başok.çamurcuoğlu@example.com', 'Nurcanberg', '2025-02-02'),
( 'Huban', 'Zengin', 'huban.zengin@example.com', 'Barsenbury', '2024-05-30'),
( 'Sanavber', 'Sezgin', 'sanavber.sezgin@example.com', 'Karadenizside', '2024-04-19'),
( 'Ergün', 'Şafak', 'ergün.şafak@example.com', 'Zenginburgh', '2025-04-15'),
( 'Amre', 'Şama', 'amre.şama@example.com', 'Ertaşville', '2025-03-07'),
( 'Özokçu', 'Şensoy', 'özokçu.şensoy@example.com', 'New Dağistanport', '2024-04-04'),
( 'Alparslan', 'Şener', 'alparslan.şener@example.com', 'South Ünübol', '2024-05-04'),
( 'Avunç', 'Yorulmaz', 'avunç.yorulmaz@example.com', 'North Sarpkın', '2025-09-02'),
( 'Sağıt', 'Sezgin', 'sağıt.sezgin@example.com', 'Gülenborough', '2024-09-07'),
( 'Yümun', 'Zengin', 'yümun.zengin@example.com', 'Rabihborough', '2023-11-14'),
( 'Oluş', 'Zorlu', 'oluş.zorlu@example.com', 'East Ferahdiba', '2024-09-15'),
( 'Yalın', 'Şensoy', 'yalın.şensoy@example.com', 'South Çolpanberg', '2025-05-28'),
( 'Öztürk', 'İnönü', 'öztürk.i̇nönü@example.com', 'Aliabbasburgh', '2025-02-05'),
( 'Mücellib', 'Ülker', 'mücellib.ülker@example.com', 'North Tuğtaş', '2024-07-08'),
( 'Vildane', 'Türk', 'vildane.türk@example.com', 'Port Tülinville', '2024-04-28'),
( 'Mümtaze', 'Zengin', 'mümtaze.zengin@example.com', 'Sadetifurt', '2025-02-21'),
( 'Çokan', 'Duran', 'çokan.duran@example.com', 'South Atılganborough', '2025-01-23'),
('Arıel', 'Tarhan', 'arıel.tarhan@example.com', 'New Hunalp', '2023-10-27'),
( 'Gülgüzel', 'Sezgin', 'gülgüzel.sezgin@example.com', 'Çakırcaburgh', '2024-10-16'),
( 'Kandef', 'İnönü', 'kandef.i̇nönü@example.com', 'Arsoyfurt', '2024-07-09'),
( 'Gülsalın', 'Durmuş', 'gülsalın.durmuş@example.com', 'New Tuğrulhan', '2025-05-31'),
( 'Atiyye', 'Sezgin', 'atiyye.sezgin@example.com', 'Lake Muhammet', '2024-09-21'),
( 'Çolpan', 'Arsoy', 'çolpan.arsoy@example.com', 'West Nurtaç', '2024-07-20'),
( 'Sançar', 'Aksu', 'sançar.aksu@example.com', 'Lake Irıs', '2025-05-11'),
( 'Yeneral', 'Yorulmaz', 'yeneral.yorulmaz@example.com', 'Tevetoğlumouth', '2023-11-11'),
( 'Birsan', 'Soylu', 'birsan.soylu@example.com', 'Boztaştown', '2024-08-08'),
( 'Vezat', 'Gülen', 'vezat.gülen@example.com', 'Ergülhaven', '2025-07-16'),
( 'Cannur', 'Erdoğan', 'cannur.erdoğan@example.com', 'Port Aran', '2023-10-24'),
( 'Hanim', 'Tarhan', 'hanim.tarhan@example.com', 'North Ummahani', '2025-03-05'),
( 'Ervaniye', 'Akçay', 'ervaniye.akçay@example.com', 'Lake Yümunberg', '2024-03-29'),
( 'Toker', 'İnönü', 'toker.i̇nönü@example.com', 'South Safura', '2024-07-13'),
( 'Tanyu', 'Aslan', 'tanyu.aslan@example.com', 'Bilginside', '2024-10-01'),
( 'Güverçin', 'Ertaş', 'güverçin.ertaş@example.com', 'Esmanperiport', '2024-09-26'),
( 'Bellisan', 'Yüksel', 'bellisan.yüksel@example.com', 'Port Selmin', '2024-07-18'),
( 'Hurşide', 'Ergül', 'hurşide.ergül@example.com', 'Korutürkview', '2024-05-19'),
( 'Mestur', 'Bilge', 'mestur.bilge@example.com', 'South Monis', '2024-01-13'),
( 'Fadıla', 'Sezer', 'fadıla.sezer@example.com', 'Gülfort', '2024-04-13'),
( 'Hilayda', 'Tarhan', 'hilayda.tarhan@example.com', 'Şafakside', '2025-05-03'),
( 'Günaydin', 'Alemdar', 'günaydin.alemdar@example.com', 'Akarland', '2025-05-06'),
('Özkutlu', 'Akça', 'özkutlu.akça@example.com', 'New Dilhuşside', '2025-08-22'),
( 'Timurtaş', 'Güçlü', 'timurtaş.güçlü@example.com', 'East Menfeat', '2024-08-12'),
( 'Sudi', 'Arsoy', 'sudi.arsoy@example.com', 'West Hüsmen', '2024-05-08'),
( 'Atagün', 'Yılmaz', 'atagün.yılmaz@example.com', 'Dumanlımouth', '2025-05-13'),
( 'Acarkan', 'Hayrioğlu', 'acarkan.hayrioğlu@example.com', 'Türktown', '2025-02-15'),
( 'Güçal', 'Akdeniz', 'güçal.akdeniz@example.com', 'South Sümeyyeland', '2024-05-23'),
( 'Sadat', 'Sakarya', 'sadat.sakarya@example.com', 'East Eminland', '2024-06-07'),
( 'Sadat', 'Yorulmaz', 'sadat.yorulmaz@example.com', 'Bilirburgh', '2024-12-08'),
( 'Şabettin', 'Durdu', 'şabettin.durdu@example.com', 'Port Elnur', '2024-11-25'),
( 'Seha', 'Seven', 'seha.seven@example.com', 'West Meleknur', '2024-12-02'),
( 'Çilga', 'Kısakürek', 'çilga.kısakürek@example.com', 'New Kayrabaytown', '2023-10-28'),
( 'Gülfeza', 'Bilir', 'gülfeza.bilir@example.com', 'Şenermouth', '2024-09-10'),
( 'Âdem', 'Hançer', 'âdem.hançer@example.com', 'New Rafiaton', '2024-05-16'),
( 'Akar', 'İnönü', 'akar.i̇nönü@example.com', 'Çetinstad', '2025-08-03'),
( 'Aytuna', 'Çetin', 'aytuna.çetin@example.com', 'Eflâtunton', '2024-08-19'),
( 'Nezize', 'Yüksel', 'nezize.yüksel@example.com', 'Port Doğanşah', '2024-09-30'),
( 'Cuheyna', 'Yüksel', 'cuheyna.yüksel@example.com', 'Tanside', '2024-07-05'),
( 'Eröz', 'Yüksel', 'eröz.yüksel@example.com', 'Lake Bengibayshire', '2025-02-08'),
( 'Cevale', 'Akçay', 'cevale.akçay@example.com', 'Nazendeview', '2024-02-24'),
( 'Ferat', 'Zengin', 'ferat.zengin@example.com', 'Port Halenur', '2024-06-07'),
( 'Lüfen', 'Demirel', 'lüfen.demirel@example.com', 'Lake İmrenhaven', '2024-08-22'),
( 'Okyalaz', 'Alemdar', 'okyalaz.alemdar@example.com', 'Port Ildız', '2024-04-23'),
( 'Günebakan', 'Akdeniz', 'günebakan.akdeniz@example.com', 'Odkanlıport', '2023-11-08'),
( 'Şehza', 'Durmuş', 'şehza.durmuş@example.com', 'Port Şahıgül', '2024-07-30'),
( 'Mükramin', 'Akdeniz', 'mükramin.akdeniz@example.com', 'Şafakland', '2024-06-26'),
( 'Hekime', 'Aslan', 'hekime.aslan@example.com', 'Gülenmouth', '2025-07-11'),
( 'Sonad', 'Dumanlı', 'sonad.dumanlı@example.com', 'Elhantown', '2024-02-07'),
( 'Beriye', 'Yıldırım', 'beriye.yıldırım@example.com', 'Arumouth', '2024-01-08'),
( 'Tevs', 'Öcalan', 'tevs.öcalan@example.com', 'Zenginton', '2024-08-12'),
( 'İlper', 'Kısakürek', 'i̇lper.kısakürek@example.com', 'Kısakürekchester', '2025-01-30'),
( 'Gülter', 'Şama', 'gülter.şama@example.com', 'Lake İzgüfurt', '2024-06-29'),
( 'Soykut', 'Durdu', 'soykut.durdu@example.com', 'South Hüsnühâl', '2024-02-07'),
( 'Şahdiye', 'Şafak', 'şahdiye.şafak@example.com', 'New Tarancı', '2024-11-30'),
( 'Sahir', 'Dumanlı', 'sahir.dumanlı@example.com', 'Bilginmouth', '2024-02-04'),
( 'Türkalp', 'Zengin', 'türkalp.zengin@example.com', 'Günselfurt', '2024-11-21'),
( 'Sanavber', 'Sakarya', 'sanavber.sakarya@example.com', 'South Coşkun', '2025-05-23'),
( 'Amre', 'Kısakürek', 'amre.kısakürek@example.com', 'Şamashire', '2025-10-02'),
( 'Tarancı', 'Bilgin', 'tarancı.bilgin@example.com', 'Lake Cuheynaview', '2024-12-25'),
( 'Sezal', 'Ertaş', 'sezal.ertaş@example.com', 'Güçlüport', '2023-10-10');

SELECT*FROM Müsteriler;




-- Kategori tablosuna veri ekleme
SET IDENTITY_INSERT Kategori ON;
INSERT INTO Kategori (id, ad) VALUES
(1, 'Bilgisayar'),
(2, 'Telefon'),
(3, 'Aksesuar'),
(4, 'Yazıcı & Kamera'),
(5, 'Depolama'),
(6, 'Ağ Ürünleri'),
(7, 'Fotoğraf'),
(8, 'Elektronik'),
(9, 'Ofis Mobilyası'),
(10, 'Kırtasiye');

SELECT * FROM Kategori;


--satici verileri ekleme 

INSERT INTO Satici (ad, adres) VALUES
('Satıcı 1', 'İstanbul, Türkiye'),
('Satıcı 2', 'Ankara, Türkiye'),
('Satıcı 3', 'İzmir, Türkiye'),
('Satıcı 4', 'Bursa, Türkiye'),
('Satıcı 5', 'Antalya, Türkiye'),
('Satıcı 6', 'Adana, Türkiye'),
('Satıcı 7', 'Konya, Türkiye'),
('Satıcı 8', 'Gaziantep, Türkiye'),
('Satıcı 9', 'Mersin, Türkiye'),
('Satıcı 10', 'Kayseri, Türkiye'),
('Satıcı 11', 'Samsun, Türkiye'),
('Satıcı 12', 'Trabzon, Türkiye'),
('Satıcı 13', 'Eskişehir, Türkiye'),
('Satıcı 14', 'Diyarbakır, Türkiye'),
('Satıcı 15', 'Şanlıurfa, Türkiye'),
('Satıcı 16', 'Elazığ, Türkiye'),
('Satıcı 17', 'Malatya, Türkiye'),
('Satıcı 18', 'Balıkesir, Türkiye'),
('Satıcı 19', 'Sakarya, Türkiye'),
('Satıcı 20', 'Tekirdağ, Türkiye');

SELECT * FROM Satici;

--urun verileri eklenmesi 
INSERT INTO URUN (ad, fiyat, stok, kategori_id, satici_id) VALUES
('Laptop X1', 7500.50, 15, 1, 3),
('Telefon Pro', 5200.00, 30, 2, 1),
('Kulaklık Bluetooth', 350.75, 50, 3, 4),
('Mouse Gaming', 150.00, 75, 3, 5),
('Klavyeli Set', 250.50, 40, 3, 2),
('Smartwatch A1', 1200.00, 25, 2, 6),
('Tablet Z10', 3300.00, 20, 2, 7),
('Monitör 27"', 2100.00, 18, 1, 3),
('Printer Jet', 800.00, 12, 4, 8),
('Webcam HD', 400.00, 35, 4, 9),
('USB Bellek 32GB', 120.00, 100, 5, 2),
('Harici HDD 1TB', 950.50, 28, 5, 3),
('SSD 512GB', 1800.00, 22, 5, 1),
('Router AC', 450.00, 40, 6, 4),
('Switch 8 Port', 600.00, 15, 6, 5),
('Kamera DSLR', 5200.00, 10, 7, 6),
('Lens 50mm', 1500.00, 8, 7, 7),
('Tripod', 250.00, 20, 7, 8),
('Fotoğraf Çantası', 400.00, 30, 7, 9),
('Powerbank 10000mAh', 200.00, 60, 8, 10),
('Şarj Cihazı', 150.00, 80, 8, 11),
('Bluetooth Hoparlör', 350.00, 45, 8, 12),
('Oyuncu Koltuğu', 2000.00, 10, 9, 13),
('Masaüstü Bilgisayar', 7500.00, 5, 1, 14),
('Kompakt Kamera', 2500.00, 12, 7, 15),
('Fotoğraf Kitabı', 120.00, 50, 10, 16),
('Çanta Laptop', 450.00, 25, 10, 17),
('Ofis Masası', 1200.00, 8, 9, 18),
('Ofis Sandalyesi', 800.00, 12, 9, 19),
('Kalem Seti', 75.50, 100, 10, 20),
('Defter', 50.00, 120, 10, 1),
('Mousepad', 35.00, 150, 10, 2),
('Klavye Mekanik', 650.00, 20, 3, 3),
('Laptop Stand', 300.00, 40, 1, 4),
('HDMI Kablo', 80.00, 80, 5, 5),
('Klavye Wireless', 400.00, 30, 3, 6),
('Ekran Koruyucu', 50.00, 70, 1, 7),
('Telefon Kılıfı', 75.00, 150, 2, 8),
('Tablet Kılıfı', 120.00, 60, 2, 9),
('Aksesuar Seti', 90.00, 80, 10, 10),
('Akıllı Ampul', 200.00, 40, 8, 11),
('Priz Akıllı', 150.00, 60, 8, 12),
('HDD Dock', 400.00, 20, 5, 13),
('Router Mesh', 1200.00, 12, 6, 14),
('Notebook 16GB', 7200.00, 10, 1, 15),
('Cep Telefonu Mini', 3500.00, 18, 2, 16),
('Klavye Gaming RGB', 750.00, 25, 3, 17),
('Mouse Wireless', 300.00, 30, 3, 18),
('Tablet Stylus', 250.00, 40, 2, 19),
('Bluetooth Kulaklık', 400.00, 35, 3, 20),
('Sabit Disk 2TB', 1800.00, 22, 5, 1),
('SSD 1TB', 3200.00, 15, 5, 2),
('Ekran 24"', 1500.00, 20, 1, 3),
('Kamera Aksiyon', 2200.00, 12, 7, 4),
('Lens 18-55mm', 2000.00, 10, 7, 5),
('Fotoğraf Tripod', 350.00, 30, 7, 6),
('Laptop Çantası', 450.00, 25, 1, 7),
('Mouse Gaming Pro', 350.00, 50, 3, 8),
('Akıllı Saat Pro', 1500.00, 20, 2, 9),
('Tablet Pro', 5000.00, 12, 2, 10),
('Printer Laser', 1200.00, 10, 4, 11),
('Webcam 4K', 700.00, 25, 4, 12),
('USB Bellek 64GB', 200.00, 90, 5, 13),
('Harici HDD 2TB', 1800.00, 20, 5, 14),
('Router Dual', 550.00, 18, 6, 15),
('Switch 16 Port', 1200.00, 10, 6, 16),
('Kamera Lens 85mm', 2500.00, 5, 7, 17),
('Fotoğraf Çantası L', 500.00, 20, 7, 18),
('Powerbank 20000mAh', 350.00, 30, 8, 19),
('Şarj Kablosu', 50.00, 100, 8, 20),
('Bluetooth Speaker Mini', 300.00, 45, 8, 1),
('Ofis Masası L', 1500.00, 5, 9, 2),
('Ofis Sandalyesi Ergonomic', 1000.00, 10, 9, 3),
('Kalem 5li Set', 60.00, 120, 10, 4),
('Defter A4', 40.00, 150, 10, 5),
('Mousepad RGB', 75.00, 80, 10, 6),
('Laptop Cooler', 200.00, 25, 1, 7),
('HDMI Kablo 2m', 60.00, 70, 5, 8),
('Klavye Wireless Pro', 500.00, 30, 3, 9),
('Ekran Koruyucu Temperli', 80.00, 60, 1, 10),
('Telefon Kılıfı Silikon', 50.00, 140, 2, 11),
('Tablet Kılıfı Leather', 200.00, 50, 2, 12),
('Aksesuar Seti Mini', 70.00, 90, 10, 13),
('Akıllı Ampul RGB', 300.00, 25, 8, 14),
('Priz Akıllı WiFi', 200.00, 40, 8, 15),
('HDD Dock USB-C', 450.00, 15, 5, 16),
('Router Mesh Pro', 2000.00, 10, 6, 17),
('Notebook 32GB', 9000.00, 8, 1, 18),
('Cep Telefonu Max', 6000.00, 12, 2, 19),
('Klavye Gaming Ultra', 900.00, 20, 3, 20),
('Mouse Wireless Pro', 400.00, 25, 3, 1),
('Tablet Stylus Pro', 350.00, 30, 2, 2),
('Bluetooth Kulaklık Pro', 600.00, 20, 3, 3),
('Sabit Disk 4TB', 3500.00, 12, 5, 4),
('SSD 2TB', 6000.00, 8, 5, 5),
('Ekran 32"', 3000.00, 15, 1, 6),
('Kamera Aksiyon Pro', 3500.00, 8, 7, 7),
('Lens 24-70mm', 4000.00, 5, 7, 8),
('Fotoğraf Tripod Pro', 500.00, 20, 7, 9),
('Laptop Çantası XL', 600.00, 15, 1, 10);

SELECT* FROM URUN;


--sipariş verileri eklenmesi
INSERT INTO Siparis (müsteri_id, tarih, toplam_tutar, odeme_turu) VALUES
(1, '2024-01-20', 1240.50, 'Kredi Kartı'),
(2, '2025-08-20', 2340.00, 'Kapıda Ödeme'),
(3, '2025-10-01', 450.75, 'Havale/EFT'),
(4, '2024-07-15', 780.00, 'Kredi Kartı'),
(5, '2025-03-25', 120.50, 'Kapıda Ödeme'),
(6, '2024-08-05', 980.00, 'Havale/EFT'),
(7, '2023-12-30', 2300.00, 'Kredi Kartı'),
(8, '2023-11-20', 1750.50, 'Kapıda Ödeme'),
(9, '2025-04-15', 640.00, 'Havale/EFT'),
(10, '2024-12-05', 520.00, 'Kredi Kartı'),
(11, '2024-02-15', 870.00, 'Kapıda Ödeme'),
(12, '2024-12-20', 1990.50, 'Havale/EFT'),
(13, '2025-06-25', 3500.00, 'Kredi Kartı'),
(14, '2024-07-10', 420.00, 'Kapıda Ödeme'),
(15, '2024-04-15', 750.75, 'Havale/EFT'),
(16, '2024-07-20', 1120.00, 'Kredi Kartı'),
(17, '2025-09-28', 980.50, 'Kapıda Ödeme'),
(18, '2024-05-10', 1340.00, 'Havale/EFT'),
(19, '2025-02-15', 2220.75, 'Kredi Kartı'),
(20, '2025-08-18', 560.00, 'Kapıda Ödeme'),
(21, '2023-11-05', 790.00, 'Havale/EFT'),
(22, '2025-07-20', 1230.50, 'Kredi Kartı'),
(23, '2025-09-28', 4300.00, 'Kapıda Ödeme'),
(24, '2024-07-10', 870.75, 'Havale/EFT'),
(25, '2025-03-25', 1200.00, 'Kredi Kartı'),
(26, '2024-08-01', 950.00, 'Kapıda Ödeme'),
(27, '2023-10-20', 1450.50, 'Havale/EFT'),
(28, '2023-11-18', 2700.00, 'Kredi Kartı'),
(29, '2025-03-30', 560.75, 'Kapıda Ödeme'),
(30, '2024-11-22', 880.00, 'Havale/EFT'),
(31, '2024-02-10', 990.50, 'Kredi Kartı'),
(32, '2024-12-15', 3300.00, 'Kapıda Ödeme'),
(33, '2024-11-01', 1200.75, 'Havale/EFT'),
(34, '2024-07-10', 410.00, 'Kredi Kartı'),
(35, '2024-10-29', 2500.50, 'Kapıda Ödeme'),
(36, '2024-02-22', 1750.00, 'Havale/EFT'),
(37, '2025-09-25', 1340.75, 'Kredi Kartı'),
(38, '2024-04-20', 980.00, 'Kapıda Ödeme'),
(39, '2025-02-05', 2200.50, 'Havale/EFT'),
(40, '2024-05-30', 450.00, 'Kredi Kartı'),
(41, '2024-04-19', 1230.50, 'Kapıda Ödeme'),
(42, '2025-04-15', 670.00, 'Havale/EFT'),
(43, '2025-03-07', 540.75, 'Kredi Kartı'),
(44, '2024-04-05', 3100.00, 'Kapıda Ödeme'),
(45, '2024-05-04', 1500.50, 'Havale/EFT'),
(46, '2025-09-05', 990.00, 'Kredi Kartı'),
(47, '2024-09-07', 870.75, 'Kapıda Ödeme'),
(48, '2023-11-14', 430.00, 'Havale/EFT'),
(49, '2024-09-15', 1200.50, 'Kredi Kartı'),
(50, '2025-05-28', 1500.00, 'Kapıda Ödeme'),
(51, '2025-02-05', 1780.75, 'Havale/EFT'),
(52, '2024-07-08', 3200.00, 'Kredi Kartı'),
(53, '2024-04-28', 450.50, 'Kapıda Ödeme'),
(54, '2025-02-21', 670.00, 'Havale/EFT'),
(55, '2025-01-23', 2100.75, 'Kredi Kartı'),
(56, '2023-10-27', 980.00, 'Kapıda Ödeme'),
(57, '2024-10-16', 1230.50, 'Havale/EFT'),
(58, '2024-07-09', 560.00, 'Kredi Kartı'),
(59, '2025-05-31', 870.75, 'Kapıda Ödeme'),
(60, '2024-09-21', 430.00, 'Havale/EFT'),
(61, '2024-07-20', 1500.50, 'Kredi Kartı'),
(62, '2025-05-11', 2200.00, 'Kapıda Ödeme'),
(63, '2023-11-11', 450.75, 'Havale/EFT'),
(64, '2024-08-08', 980.00, 'Kredi Kartı'),
(65, '2025-07-16', 1230.50, 'Kapıda Ödeme'),
(66, '2023-10-24', 670.00, 'Havale/EFT'),
(67, '2025-03-05', 2100.75, 'Kredi Kartı'),
(68, '2024-03-29', 980.00, 'Kapıda Ödeme'),
(69, '2024-07-13', 1230.50, 'Havale/EFT'),
(70, '2024-10-01', 560.00, 'Kredi Kartı'),
(71, '2024-09-26', 870.75, 'Kapıda Ödeme'),
(72, '2024-07-18', 430.00, 'Havale/EFT'),
(73, '2024-05-19', 1500.50, 'Kredi Kartı'),
(74, '2024-01-13', 2200.00, 'Kapıda Ödeme'),
(75, '2024-04-13', 450.75, 'Havale/EFT'),
(76, '2025-05-03', 980.00, 'Kredi Kartı'),
(77, '2025-05-06', 1230.50, 'Kapıda Ödeme'),
(78, '2025-08-22', 670.00, 'Havale/EFT'),
(79, '2024-08-12', 2100.75, 'Kredi Kartı'),
(80, '2024-05-08', 980.00, 'Kapıda Ödeme'),
(81, '2025-05-13', 1230.50, 'Havale/EFT'),
(82, '2025-02-15', 560.00, 'Kredi Kartı'),
(83, '2024-05-23', 870.75, 'Kapıda Ödeme'),
(84, '2024-06-07', 430.00, 'Havale/EFT'),
(85, '2024-12-08', 1500.50, 'Kredi Kartı'),
(86, '2024-11-25', 2200.00, 'Kapıda Ödeme'),
(87, '2024-12-02', 450.75, 'Havale/EFT'),
(88, '2023-10-28', 980.00, 'Kredi Kartı'),
(89, '2024-09-10', 1230.50, 'Kapıda Ödeme'),
(90, '2024-05-16', 670.00, 'Havale/EFT'),
(91, '2025-08-03', 2100.75, 'Kredi Kartı'),
(92, '2024-08-19', 980.00, 'Kapıda Ödeme'),
(93, '2024-09-30', 1230.50, 'Havale/EFT'),
(94, '2024-07-05', 560.00, 'Kredi Kartı'),
(95, '2025-02-08', 870.75, 'Kapıda Ödeme'),
(96, '2024-02-24', 430.00, 'Havale/EFT'),
(97, '2024-06-07', 1500.50, 'Kredi Kartı'),
(98, '2024-08-22', 2200.00, 'Kapıda Ödeme'),
(99, '2024-04-23', 450.75, 'Havale/EFT'),
(100, '2023-10-10', 980.00, 'Kredi Kartı');


SELECT * FROM Siparis ;



--VERİ GÜNCELLEME İŞLEMLERİ

--Insert işlemi 
INSERT INTO Müsteriler (ad, soyad, email, sehir, kayit_tarihi)
VALUES ('Ali', 'Yılmaz', 'ali.yilmaz@example.com', 'Istanbul', '2025-10-03'),
('Mehmet', 'Yıldırım', 'mhmmtyldrm@example.com', 'Istanbul', '2023-11-09');

SELECT * FROM Müsteriler WHERE sehir = 'Istanbul';

INSERT INTO Urun (ad, fiyat, stok, kategori_id, satici_id)
VALUES ('Laptop', 1500, 20, 1, 3),
('Ekran koruması',130,12,10,7);

SELECT* FROM Kategori;


INSERT INTO Siparis (müsteri_id, tarih, toplam_tutar, odeme_turu)
VALUES (1, '2025-10-03', 15000, 'Kredi Kartı'),
(3,'2023-11-08',1400,'Havale/EFT');
 
 SELECT*FROM Siparis;


--UODATE İŞLEMİ

UPDATE Müsteriler
SET sehir ='Istanbul'
where id=1;

UPDATE siparis 
set odeme_turu='Kredi Kartı'
where id=2;


UPDATE URUN 
SET satici_id=2
WHERE id=6;


--DELETE İşlemleri

DELETE FROM URUN 
WHERE id=7;

DELETE FROM Siparis
WHERE toplam_tutar='450.75';

DELETE FROM Müsteriler
WHERE ad='Mehmet';


--TRYNCATE İşlemi
-- (VERİTABANI İLİŞKİLERİ BOZULMAMASI AMAÇLI FARKLI BİR BOOKS TABLOSU EKLENDİ VE TRUNCATE İŞLEMİ UYGULANDIKTAN SONRA TABLO KALDIRILDI)

TRUNCATE TABLE books;


-- stok azaldığında güncelleme sorgusu 
UPDATE URUN
SET stok = stok - 3
WHERE id = 5;

UPDATE URUN
SET stok= stok-5
where id IN (11,26,33);

