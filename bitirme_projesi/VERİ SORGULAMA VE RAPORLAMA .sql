USE BitirmeProjesi;
GO

--TEMEL SORGULAR

--En çok sipariþ veren 5 müþteri

SELECT TOP 5 
    s.müsteri_id,
    SUM(sd.adet) AS toplam_urun_adedi
FROM Siparis_Detay sd
JOIN Siparis s ON sd.siparis_id = s.id
GROUP BY s.müsteri_id

ORDER BY toplam_urun_adedi DESC;


--En çok satýlan ürünler 
SELECT 
    u.ad AS urun_adi,
    SUM(sd.adet) AS toplam_siparis_adedi
FROM Siparis_Detay sd
JOIN Urun u ON sd.urun_id = u.id
GROUP BY u.ad
ORDER BY toplam_siparis_adedi DESC;


--Soru: Stoku 10’dan az olan ürünleri listele.
SELECT 
 ad AS urunadi,
 stok AS stokdurumu 
FROM URUN 
WHERE stok<10
ORDER BY stok DESC;

SELECT 
    u.ad AS UrunAdi,
    SUM(sd.adet) AS ToplamAdet
FROM 
    Siparis_Detay sd
JOIN 
    Urun u ON sd.urun_id = u.id
GROUP BY 
    u.ad
ORDER BY 
    ToplamAdet ASC;
 
 
 -- En yüksek cirosu olan satýcýlar.
 SELECT s.ad AS satýcýadi,
 SUM(sd.adet * u.fiyat) AS ciro
 FROM Siparis_Detay sd
 JOIN URUN u  ON sd.urun_id=u.id
 JOIN Satici s ON u.satici_id=s.id
 GROUP BY s.ad
 ORDER BY ciro DESC;

 --Þehirlere göre müþteri sayýsý 

SELECT sehir, COUNT(*) AS müsteri_sayisi
FROM Müsteriler
GROUP BY sehir;


-- Kategori bazlý toplam satýþlar 

SELECT 
    k.ad AS Kategori_adi,
    SUM(sd.adet * u.fiyat) AS ToplamSatisTutarý,
    SUM(sd.adet) AS ToplamAdet
FROM Siparis_Detay sd
JOIN URUN u ON sd.urun_id = u.id
JOIN Kategori k ON u.kategori_id = k.id
GROUP BY k.ad
ORDER BY ToplamSatisTutarý DESC;


-- Aylara göre sipariþ sayýsý 
SELECT 
    MONTH(tarih) AS Ay,
    COUNT(*) AS SiparisSayisi
FROM Siparis
GROUP BY MONTH(tarih)
ORDER BY Ay;


--JOINLER 
--Sipariþlerde müþteri bilgisi + ürün bilgisi + satýcý bilgisi.

SELECT 
    s.id AS SiparisID,
    m.ad + ' ' + m.soyad AS MusteriAdi,
    u.ad AS UrunAdi,
    sa.ad AS SaticiAdi,
    sd.adet,
    sd.fiyat,
    s.tarih,
    s.toplam_tutar
FROM Siparis s
JOIN Müsteriler m ON s.müsteri_id = m.id
JOIN Siparis_Detay sd ON s.id = sd.siparis_id
JOIN Urun u ON sd.urun_id = u.id
JOIN Satici sa ON u.satici_id = sa.id
ORDER BY s.id;


--- Hiç satýlmamýþ ürünler. 

SELECT 
    u.id,
    u.ad,
    u.fiyat,
    u.stok
FROM URUN u
LEFT JOIN Siparis_Detay sd ON u.id = sd.urun_id
WHERE sd.urun_id IS NULL;


--hiç sipariþ vermemiþ müþteriler 
SELECT 
    m.id,
    m.ad,
    m.soyad

FROM Müsteriler m
LEFT JOIN Siparis s ON m.id = s.müsteri_id
WHERE s.müsteri_id IS NULL;



--en çok kazanç saðlayan ilk 3 kategori

SELECT 
k.ad AS Kategori_adý,
SUM(sd.adet * sd.fiyat) as toplam_kazanc
FROM Siparis_Detay sd 
JOIN Urun u ON sd.urun_id = u.id
JOIN Kategori k ON u.kategori_id = k.id
GROUP BY k.ad
ORDER BY toplam_kazanc DESC;