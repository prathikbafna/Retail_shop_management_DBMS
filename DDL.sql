CREATE DATABASE `RETAIL_SHOP`; 

USE RETAIL_SHOP;

CREATE TABLE `RETAIL_SHOP`.`customer` ( 
`customer_id` INT(11) NOT NULL, 
`customer_name` VARCHAR(15) NOT NULL, 
`customer_address` VARCHAR(30) NULL DEFAULT NULL, 
`customer_phone` INT(11) NULL DEFAULT NULL, 
PRIMARY KEY (customer_id) 
);

CREATE TABLE `RETAIL_SHOP`.`product` ( 
`product_id` INT(11) NOT NULL, 
`product_name` VARCHAR(15) NOT NULL, 
`product_price` INT(11) NULL, 
`product_mfd` DATE NOT NULL, 
`product_exp` DATE NOT NULL, 
`supplier_id` INT(11) NOT NULL, 
PRIMARY KEY (product_id) 
); 

CREATE TABLE `RETAIL_SHOP`.`buys` ( 
`customer_id` INT(11) NOT NULL, 
`product_id` INT(11) NOT NULL, 
FOREIGN KEY (customer_id) 
REFERENCES customer (customer_id), 
FOREIGN KEY (product_id) 
REFERENCES product (product_id) 
);


CREATE TABLE `RETAIL_SHOP`.`supplier` ( 
`supplier_id` INT(11) NOT NULL, 
`supplier_name` VARCHAR(15) NOT NULL, 
`supplier_phone` INT(11) NULL DEFAULT NULL, 
`supplier_address` VARCHAR(50) NULL DEFAULT NULL, 
PRIMARY KEY (supplier_id) 
); 




ALTER TABLE product 
ADD CONSTRAINT supplier_id 
FOREIGN KEY (supplier_id) REFERENCES 
supplier(supplier_id); 


ALTER TABLE buys 
ADD CONSTRAINT PK PRIMARY KEY 
(customer_id,product_id); 


CREATE TABLE `RETAIL_SHOP`.`orders` ( 
`orders_id` INT(11) NOT NULL, 
`orders_date` DATE NOT NULL, 
`supplier_id` INT(11) NOT NULL, 
`staff_id` INT(11) NOT NULL, 
PRIMARY KEY (orders_id), 
FOREIGN KEY (supplier_id) 
REFERENCES supplier (supplier_id) 
); 


CREATE TABLE `RETAIL_SHOP`.`order_details` ( 
`orders_id` INT(11) NOT NULL, 
`product_id` INT(11) NOT NULL, 
PRIMARY KEY (orders_id , product_id), 
FOREIGN KEY (orders_id) 
REFERENCES orders (orders_id) 
); 


CREATE TABLE `RETAIL_SHOP`.`staff` ( 
`staff_id` INT(11) NOT NULL, 
`staff_fname` VARCHAR(15) NOT NULL, 
`staff_lname` VARCHAR(15) NOT NULL, 
`staff_salary` INT(8) NOT NULL, 
`super_staff_id` INT(11) NOT NULL, 
PRIMARY KEY (staff_id), 
FOREIGN KEY (super_staff_id) 
REFERENCES staff (staff_id) 
); 


ALTER TABLE orders 
ADD CONSTRAINT staff_id 
FOREIGN KEY (staff_id) REFERENCES 
staff(staff_id); 


CREATE TABLE `RETAIL_SHOP`.`dependents` ( 
`staff_id` INT(11) NOT NULL, 
`dependents_name` VARCHAR(20) NOT NULL, 
`dependents_sex` VARCHAR(11) NULL DEFAULT NULL, 
`dependents_rel` VARCHAR(15) NULL DEFAULT NULL, 
FOREIGN KEY (staff_id) 
REFERENCES staff (staff_id) 
); 


CREATE TABLE `RETAIL_SHOP`.`serves` ( 
`staff_id` INT(11) NOT NULL, 
`customer_id` INT(11) NOT NULL, 
PRIMARY KEY (staff_id , customer_id), 
FOREIGN KEY (staff_id) 
REFERENCES staff (staff_id), 
FOREIGN KEY (customer_id) 
REFERENCES customer (customer_id) 
); 


CREATE TABLE `RETAIL_SHOP`.`bill` ( 
`bill_id` INT(11) NOT NULL, 
`bill_date` DATE NOT NULL, 
`customer_id` INT(11) NOT NULL, 
FOREIGN KEY (customer_id) 
REFERENCES customer (customer_id), 
PRIMARY KEY (bill_id) 
); 


CREATE TABLE `RETAIL_SHOP`.`bill_details` ( 
`bill_id` INT(11) NOT NULL, 
`quantity` INT(11) NOT NULL CHECK (quantity > 0), 
`product_id` INT(11) NOT NULL, 
PRIMARY KEY (bill_id , product_id), 
FOREIGN KEY (bill_id) 
REFERENCES bill (bill_id) 
); 


ALTER TABLE product 
ADD CHECK (product_mfd<product_exp); 

SHOW  TABLES; 