CREATE OR REPLACE VIEW `rakamin-kf-analytics-467013.kimia_farma.vw_top5_cabang_outlier` AS
SELECT 
  branch_name,
  branch_id,
  rating_cabang,
  AVG(rating_transaksi) AS avg_rating_transaksi
FROM `rakamin-kf-analytics-467013.kimia_farma.tbl_analisis_dataset`
GROUP BY branch_name,branch_id, rating_cabang
ORDER BY rating_cabang DESC, avg_rating_transaksi ASC
LIMIT 5;
