 
 use sales;
 
 SELECT * FROM sales.customers;
 
 select * from sales.transactions limit 10;
 
 select * from sales.transactions where currency="USD";
 
 select count(*) from sales.transactions where order_date like "2020%"; 
 
 SELECT sales.transactions.*, sales.date.* FROM sales.transactions 
 inner join sales.date on sales.transactions.order_date=sales.date.date
 where sales.date.year=2021;
 
 SELECT SUM(sales.transactions.sales_amount) as Revenue FROM sales.transactions 
 inner join sales.date on sales.transactions.order_date=sales.date.date
 where sales.date.year=2020 and market_code="Mark001";
 
 
 
 SELECT count(*) FROM sales.transactions where currency="INR\r";
 
 select * from sales.transactions;
 
 where currency="USD";
 
 select distinct(transactions.currency) from transactions;
 
 -- 'INR'
-- 'INR\r'


-- -------------------------- 
-- GROUP BY

SELECT product_code, SUM(sales_amount) as Revenue FROM sales.transactions GROUP BY product_code ORDER BY Revenue DESC;
