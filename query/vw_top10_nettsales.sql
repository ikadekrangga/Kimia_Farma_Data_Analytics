CREATE OR REPLACE VIEW `rakamin-kf-analytics-467013.kimia_farma.vw_top10_nettsales` AS
SELECT 
  provinsi,
  sum(nett_sales)/1000000000 total_nett_sales_in_Billion
  from `rakamin-kf-analytics-467013.kimia_farma.tbl_analisis_dataset`
  group by provinsi
  order by total_nett_sales_in_Billion asc
  limit 10