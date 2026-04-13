create database Zepto_db;

use zepto_db;

drop table if exists zepto;
create table zepto(
sku_id serial primary key,
category varchar(120),
name varchar(150),
mrp numeric(8,2),
discountPercent numeric(5,2),
availableQuantity integer,
discountedSellingPrice numeric(8,2),
weightInGms integer,
outOfStock boolean,
quantity integer
);


select * from zepto;


select count(*) from zepto;

select * from zepto limit 10;
desc zepto;

alter table zepto rename column ï»¿Category to category;

select * from zepto 
where name is null or
category is null or
mrp is null or
discountPercent is null or 
availablequantity is null or
discountedsellingprice is null or
weightingms is null or
outofstock is null or
quantity is null;

-- different categories

select distinct category from zepto order by category;

-- products in stock vs out of stock

select * from zepto;

select * from zepto where outofstock = 'True';

select outofstock, count(*) from zepto
group by outofstock;

-- product names present multiple times

select name, count(*) as no_of_units from zepto
group by name having count(*) > 1
order by count(*) desc;


-- data cleaning

-- products with price = 0

select * from zepto;

select * from zepto where mrp = 0 or discountedsellingprice = 0;

set sql_safe_updates = 0;

delete from zepto where mrp = 0 or discountedsellingprice = 0;

-- conver price to rupees

update zepto
set mrp = mrp / 100, 
discountedsellingprice = discountedsellingprice / 100;

select * from zepto;

-- 1. find the top 10 best value products based on the discount percentage.

select distinct name, mrp, discountpercent from zepto order by discountpercent desc limit 10;

-- 2. what are the products with high mrp but outof stock

select distinct name, mrp from zepto where outofstock = 'True' and mrp > 300 order by mrp desc;

-- 3. calculate the estimated revenue for each category

select category, sum(discountedsellingprice * availablequantity) as revenue from zepto
group by category order by revenue desc;

-- 4. find all products where mrp is greater than 500 and dicount is less than 10%

select distinct name, mrp, discountpercent from zepto where mrp > 500 and discountpercent < 10
order by mrp desc, discountpercent;

-- 5. Identify the top 5 categories offering the highest average discount percentage.

select distinct category, round(avg(discountpercent),2) avg_discount from zepto group by category
order by avg_discount desc limit 5;

-- 6. Find the price per gram for products above 100g and sort by best value.
select * from zepto;

select distinct name, weightingms, discountedsellingprice, round(discountedsellingprice / weightingms, 2) as price_per_gm 
from zepto 
where weightingms > 100 
order by price_per_gm desc;

-- 7. Group the products into categories like low, medium, bulk
select quantity from zepto order by quantity desc;

select distinct name, quantity,
case
	when quantity <= 400 then 'low'
    when quantity <= 800 then 'medium'
    else 'bulk'
end as product_category 
from zepto;

select distinct name, weightingms,
case 
	when weightingms < 1000 then 'low'
    when weightingms < 5000 then 'high'
    else 'bulk'
end as weight_category
from zepto;

-- 8. What is the total inventory weight per category

select category, sum(weightingms * availablequantity) as total_weight from zepto
group by category;