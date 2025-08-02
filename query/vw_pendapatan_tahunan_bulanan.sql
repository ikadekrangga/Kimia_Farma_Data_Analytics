CREATE OR REPLACE VIEW `rakamin-kf-analytics-467013.kimia_farma.vw_pendapatan_tahunan_bulanan` AS
SELECT
  EXTRACT(YEAR FROM DATE(date)) AS tahun,
  EXTRACT(MONTH FROM DATE(date)) AS bulan,
  FORMAT_DATE('%Y-%m', DATE(date)) AS periode,
  SUM(nett_sales) AS total_pendapatan
FROM `rakamin-kf-analytics-467013.kimia_farma.tbl_analisis_dataset`
GROUP BY tahun, bulan, periode
ORDER BY periode;
