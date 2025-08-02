CREATE OR REPLACE VIEW  `rakamin-kf-analytics-467013.kimia_farma.vw_best_branch` AS
SELECT
  branch_id,
  sum(nett_profit) as total_profit
   FROM `rakamin-kf-analytics-467013.kimia_farma.tbl_analisis_dataset`
   group by branch_id
   order by total_profit desc
   limit 1