create or replace view `rakamin-kf-analytics-467013.kimia_farma.vw_Geomaps_profit_distribution` as
SELECT 
  provinsi,
  sum(nett_profit) as total_profit, "Indonesia" as country
  from `rakamin-kf-analytics-467013.kimia_farma.tbl_analisis_dataset`
  group by provinsi
  order by total_profit asc