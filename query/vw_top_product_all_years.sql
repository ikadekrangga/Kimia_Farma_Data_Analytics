CREATE OR REPLACE VIEW `rakamin-kf-analytics-467013.kimia_farma.vw_top_product_all_years` AS
SELECT 
  product_id,
  product_name,
  COUNT(transaction_id) AS total_sales_product
FROM `rakamin-kf-analytics-467013.kimia_farma.tbl_analisis_dataset`
WHERE EXTRACT(YEAR FROM date) BETWEEN 2020 AND 2023
GROUP BY product_id, product_name
ORDER BY total_sales_product DESC
LIMIT 1;
