-- Triggers
'''
A trigger is a stored program invoked automatically in response to 
an event such as insert, update, or delete that occurs in the associated 
table. For example, you can define a trigger that is invoked automatically 
before a new row is inserted into a table.
'''
 

-- checking the expiry date of the product 
-- before inserting into the store.If the product is expired then it raises an 
-- error and alerts the shop owner.

DELIMITER $$ 
CREATE TRIGGER check_expiry_date 
AFTER INSERT 
ON product FOR EACH ROW 
BEGIN 
IF NEW.product_exp < current_date() THEN 
signal sqlstate VALUE '45000' set message_text = 'Product is expired 
';  
END IF; 
END$$ 
DELIMITER ; 



-- In this trigger we are creating a backup table for staff data where after 
-- deleting details from the table they are stored in another backup table. 
 

DELIMITER $$ 
CREATE TRIGGER before_staff_delete 
BEFORE DELETE 
ON `staff` FOR EACH ROW 
BEGIN 
INSERT INTO `staff_backup`(`staff_id`, 
`staff_fname`,`staff_lname`,`staff_salary`,`super_staff_id` ) VALUES 
(OLD.staff_id,OLD.staff_fname,OLD.staff_lname,OLD.staff_salary,OLD.
 super_staff_id); 
END$$ 
DELIMITER ;  



-- In this trigger we are taking care that whenever we insert or update the 
-- salary of the staff we are taking care that it is not set to improper value.  

DELIMITER $$ 
CREATE TRIGGER display_improper_salary1 
BEFORE insert  
ON staff FOR EACH ROW 
BEGIN 
if (new.staff_salary < 1) then 
signal sqlstate VALUE '45000' set message_text = 'salary cannot 
be Zero ';  
end if; 
END$$ 
DELIMITER ; 



-- In this trigger we are incrementing the salary of the staff for 2 times once 
-- in a year and again after a year. 

DELIMITER $$ 
CREATE TRIGGER increment_salary 
AFTER INSERT 
ON staff FOR EACH ROW 
BEGIN 
IF datediff(NOW(),old.staff_join_date) = 365 or 
datediff('2019-06-02', NOW()) = 730 THEN 
set staff.staff_salary = staff.staff_salary + 1000; 
END IF; 
END$$ 
DELIMITER ; 
