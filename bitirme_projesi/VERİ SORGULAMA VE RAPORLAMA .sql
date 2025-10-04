USE BitirmeProjesi;
GO

--TEMEL SORGULAR

--En �ok sipari� veren 5 m��teri

SELECT TOP 5 
    s.m�steri_id,
    SUM(sd.adet) AS toplam_urun_adedi
FROM Siparis_Detay sd
JOIN Siparis s ON sd.siparis_id = s.id
GROUP BY s.m�steri_id

ORDER BY toplam_urun_adedi DESC;


--En �ok sat�lan �r�nler 
SELECT 
    u.ad AS urun_adi,
    SUM(sd.adet) AS toplam_siparis_adedi
FROM Siparis_Detay sd
JOIN Urun u ON sd.urun_id = u.id
GROUP BY u.ad
ORDER BY toplam_siparis_adedi DESC;


--Soru: Stoku 10�dan az olan �r�nleri listele.
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
 
 
 -- En y�ksek cirosu olan sat�c�lar.
 SELECT s.ad AS sat�c�adi,
 SUM(sd.adet * u.fiyat) AS ciro
 FROM Siparis_Detay sd
 JOIN URUN u  ON sd.urun_id=u.id
 JOIN Satici s ON u.satici_id=s.id
 GROUP BY s.ad
 ORDER BY ciro DESC;

 --�ehirlere g�re m��teri say�s� 

SELECT sehir, COUNT(*) AS m�steri_sayisi
FROM M�steriler
GROUP BY sehir;


-- Kategori bazl� toplam sat��lar 

SELECT 
    k.ad AS Kategori_adi,
    SUM(sd.adet * u.fiyat) AS ToplamSatisTutar�,
    SUM(sd.adet) AS ToplamAdet
FROM Siparis_Detay sd
JOIN URUN u ON sd.urun_id = u.id
JOIN Kategori k ON u.kategori_id = k.id
GROUP BY k.ad
ORDER BY ToplamSatisTutar� DESC;


-- Aylara g�re sipari� say�s� 
SELECT 
    MONTH(tarih) AS Ay,
    COUNT(*) AS SiparisSayisi
FROM Siparis
GROUP BY MONTH(tarih)
ORDER BY Ay;


--JOINLER 
--Sipari�lerde m��teri bilgisi + �r�n bilgisi + sat�c� bilgisi.

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
JOIN M�steriler m ON s.m�steri_id = m.id
JOIN Siparis_Detay sd ON s.id = sd.siparis_id
JOIN Urun u ON sd.urun_id = u.id
JOIN Satici sa ON u.satici_id = sa.id
ORDER BY s.id;


--- Hi� sat�lmam�� �r�nler. 

SELECT 
    u.id,
    u.ad,
    u.fiyat,
    u.stok
FROM URUN u
LEFT JOIN Siparis_Detay sd ON u.id = sd.urun_id
WHERE sd.urun_id IS NULL;


--hi� sipari� vermemi� m��teriler 
SELECT 
    m.id,
    m.ad,
    m.soyad

FROM M�steriler m
LEFT JOIN Siparis s ON m.id = s.m�steri_id
WHERE s.m�steri_id IS NULL;



--en �ok kazan� sa�layan ilk 3 kategori

SELECT 
k.ad AS Kategori_ad�,
SUM(sd.adet * sd.fiyat) as toplam_kazanc
FROM Siparis_Detay sd 
JOIN Urun u ON sd.urun_id = u.id
JOIN Kategori k ON u.kategori_id = k.id
GROUP BY k.ad
ORDER BY toplam_kazanc DESC;