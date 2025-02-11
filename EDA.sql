# Exploratary Data Analysis\

# customers served by employees 
select c.customer_id, c.customer_name 
from serves as s ,customer as c 
where s.customer_id = c.customer_id; 



#printing bill details 
select p.product_name,bd.quantity, 
p.product_price,p.product_price*bd.quantity 
from  bill_details as bd, product as p 
where bd.product_id = p.product_id and bd.bill_id = 1 
order by p.product_name , p.product_price;
UNION
select sum(p.product_price*bd.quantity) as total_price 
from  bill_details as bd, product as p 
where bd.product_id = p.product_id and bd.bill_id = 1; 


# to find total number of times the products is sold [liked by customers ] 
CREATE VIEW 
customers_favourite(number_of_customer_who_bought,productname) 
as select count(*) as number_of_pieces_got_saled,p.product_name 
from buys as B,product as p 
where B.product_id=p.product_id 
group by(p.product_name) ;



#name of the staff who placed the order 
SELECT 
e.staff_fname, e.staff_lname 
FROM 
staff AS e 
WHERE 
EXISTS( SELECT 
e.staff_fname, e.staff_lname 
FROM 
supplier AS s, 
orders AS o 
WHERE 
s.supplier_name = 'vishal' 
AND s.supplier_id = o.supplier_id 
AND o.staff_id = e.staff_id);


# staff who served a particular customer 
SELECT 
e.staff_fname, e.staff_lname 
FROM 
staff AS e 
WHERE 
EXISTS( SELECT 
e.staff_fname, e.staff_lname 
FROM 
serves AS s, 
customer AS c 
WHERE 
c.customer_name = 'preetham' 
AND c.customer_id = s.customer_id 
AND s.staff_id = e.staff_id);