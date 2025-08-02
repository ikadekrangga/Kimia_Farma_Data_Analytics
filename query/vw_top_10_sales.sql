CREATE VIEW `rakamin-kf-analytics-467013.kimia_farma.vw_top_10_sales` AS
SELECT 
  provinsi,
  count(transaction_id) as total_transaksi
  from `rakamin-kf-analytics-467013.kimia_farma.tbl_analisis_dataset`
  group by provinsi
  order by total_transaksi
  limit 10;