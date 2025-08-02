CREATE OR REPLACE TABLE rakamin-kf-analytics-467013.kimia_farma.tbl_analisis_dataset AS 
SELECT 
  t.transaction_id,
  t.date,
  t.branch_id,
  c.branch_name,
  c.kota,
  c.provinsi,
  c.rating as rating_cabang,
  t.customer_name,
  p.product_id,
  p.product_name,
  p.price as actual_price,
  t.discount_percentage,
  CASE
    WHEN p.price <= 50000 then 0.10
    WHEN p.price > 50000 and p.price < 100000 then 0.15
    WHEN p.price > 100000 and p.price < 300000 then 0.2
    WHEN p.price > 300000 and p.price < 500000 then 0.25
    ELSE 0.30

  END AS persentase_gross_laba,
  (p.price * (1-t.discount_percentage)) as nett_sales,
  (p.price * (1-t.discount_percentage)) * 
  CASE
    WHEN p.price <= 50000 then 0.10
    WHEN p.price > 50000 and p.price < 100000 then 0.15
    WHEN p.price > 100000 and p.price < 300000 then 0.2
    WHEN p.price > 300000 and p.price < 500000 then 0.25
    ELSE 0.30
  END AS nett_profit,
  t.rating as rating_transaksi 
  FROM 
    rakamin-kf-analytics-467013.kimia_farma.tbl_final_transaction as t
  JOIN 
    rakamin-kf-analytics-467013.kimia_farma.tbl_kantor_cabang  as c on t.branch_id = c.branch_id 
  JOIN 
    rakamin-kf-analytics-467013.kimia_farma.tbl_product  as p on t.product_id = p.product_id 