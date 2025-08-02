CREATE OR REPLACE VIEW `rakamin-kf-analytics-467013.kimia_farma.vw_total_transaction` as
SELECT 
 count(transaction_id) as total_transaksi
 FROM `rakamin-kf-analytics-467013.kimia_farma.tbl_analisis_dataset`
  