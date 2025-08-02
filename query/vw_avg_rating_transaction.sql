CREATE VIEW  `rakamin-kf-analytics-467013.kimia_farma.vw_avg_rating_transaction` AS
SELECT
  AVG(rating_cabang) as avg_rating_cabang
   FROM `rakamin-kf-analytics-467013.kimia_farma.tbl_analisis_dataset`