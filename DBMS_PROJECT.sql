CREATE TABLE `RETAIL_SHOP1`.`customer` ( 
`customer_id` INT(10) NOT NULL ,
`customer_name` VARCHAR(15) NOT NULL ,
`customer_address` VARCHAR(30) NULL DEFAULT NULL , 
`customer_phone` INT(10) NULL DEFAULT NULL,
PRIMARY KEY (customer_id) );