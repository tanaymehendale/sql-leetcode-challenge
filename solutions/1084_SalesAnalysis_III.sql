-- # Write your MySQL query statement below
SELECT p.product_id, product_name
FROM Product p 
INNER JOIN Sales s
ON p.product_id = s.product_id
GROUP BY p.product_id
HAVING MIN(s.sale_date) >= '2019-01-01' AND MAX(s.sale_date) <= '2019-03-31';