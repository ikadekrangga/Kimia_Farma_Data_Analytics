CREATE OR REPLACE VIEW `rakamin-kf-analytics-467013.kimia_farma.vw_total_sales` as
SELECT 
  sum(nett_sales) as Total_Sales
  from `rakamin-kf-analytics-467013.kimia_farma.tbl_analisis_dataset`