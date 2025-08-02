CREATE OR REPLACE VIEW `rakamin-kf-analytics-467013.kimia_farma.vw_total_branch` AS
SELECT 
  COUNT(DISTINCT branch_id) as total_branch
  from `rakamin-kf-analytics-467013.kimia_farma.tbl_analisis_dataset`