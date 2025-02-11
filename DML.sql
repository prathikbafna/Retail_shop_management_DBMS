insert into customer values 
(10001,'Dhanraj','church road hyr',968642524), 
(10002,'shreyas','BJRextension hyr',810590798), 
(10003,'preetham','teachers colony blore',988071991), 
(10004,'koushik','channel road hosur',960627894), 
(10005,'Prathik','nehru circle blore',914848962); 

insert into supplier values 
(30001,'sandeep',984530070,'ratandeep shimoga'), 
(30002,'vishal',962000003,'di-fabri india'), 
(30003,'praveen',94812782,'chamrajpet blore'), 
(30004,'neha',962015163,'kavdi dugra'), 
(30005,'santhosh',966327838,'MM mohan hyr'); 


insert into product values 
(20001,'parle-g',10,'2020-5-10','2021-5-10',30001), 
(20002,'drak_fantacy',30,'2020-5-10','2021-7-10',30002), 
(20003,'milkbikis',40,'2020-5-10','2021-7-10',30003), 
(20004,'hide_n_seek',25,'2020-5-10','2021-5-10',30004), 
(20005,'bourbon',50,'2020-5-10','2021-7-10',30005); 


insert into buys values 
(10001,20001), 
(10003,20002), 
(10002,20002); 


insert into staff values 
(50001,'sharan','keshav',10000,'50001'), 
(50002,'varun','keshav',10000,'50001'), 
(50003,'guru','kiran',8000,'50003'), 
(50004,'manu','kumar',7000,'50003'), 
(50005,'sujay','jain',5000,'50003'); 


insert into orders values 
(60001,'2020-4-15',30001,50001), 
(60002,'2020-4-17',30001,50001), 
(60003,'2020-4-20',30002,50003); 


insert into order_details values 
(60001,20001), 
(60002,20001), 
(60003,20003); 



insert  into dependents value 
(50001,'samarth','male','son'), 
(50002,'samrudh','male','brother'), 
(50005,'suhas','male','brother'); 

insert into serves values 
(50001,10001), 
(50002,10002), 
(50003,10003); 


insert into bill values 
(1,'2020-5-23',10001), 
(2,'2020-5-23',10002), 
(3,'2020-5-23',10003); 


insert into bill_details values 
(1,5,20001), 
(1,5,20003), 
(2,5,20005), 
(2,10,20002), 
(3,8,20003); 
