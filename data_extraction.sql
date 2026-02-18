SELECT COUNT(*) AS TOPLAM_SATIR_SAYISI 
FROM cumulative


SELECT koi_disposition , COUNT(*) AS ADET
FROM cumulative
GROUP BY koi_disposition





SELECT kepler_name,
	koi_teq AS GEZEGENLERIN_SICAKLIGI_K,
	koi_prad AS Gezegen_Yarýçapý_Dunya,
	koi_period AS Yorunge_Suresý_Gun
FROM cumulative
WHERE koi_disposition = 'CONFIRMED'
	AND koi_teq BETWEEN 180 AND 320
	AND koi_prad BETWEEN 0.5 AND 2.0
ORDER BY koi_teq 



SELECT 
	MIN(koi_teq) AS En_Dusuk_Sýcaklýk,
	MAX(koi_teq) AS En_Yuksek_Sýcaklýk,
	MIN(koi_prad) AS En_Kucuk_Yaricap,
	MAX(koi_prad) AS En_Yuksek_yarýcap
FROM cumulative
WHERE koi_disposition ='CONFIRMED'


SELECT TOP 20

	kepler_name,koi_teq,koi_prad
	FROM cumulative
WHERE koi_disposition ='CONFIRMED'
ORDER BY koi_score DESC



SELECT COUNT(*)
FROM cumulative
WHERE koi_teq IS NULL OR koi_prad IS NULL


SELECT 
	kepler_name,
	koi_disposition,
	koi_score,
	koi_period,
	koi_prad,
	koi_teq,
	koi_steff
FROM cumulative
WHERE koi_disposition != 'FALSE POSITIVE'
AND koi_score > 0.5
