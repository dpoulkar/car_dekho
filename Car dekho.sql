create schema cars;


use cars;

------- Read Data----------
Select * from cardekho;


------- Total Cars : To get a count of total records--------
select count(*)from cardekho;


-------The manager asked the employee How many cars will be availabe in 2023?--------
select count(*) from cardekho where year = 2023;


-------The manager asked the employee How many cars is available in 2020,2021,2022------
select count(*) from cardekho where year = 2020; 
select count(*) from cardekho where year = 2021; 
select count(*) from cardekho where year = 2022;

----- Group by -----
Select count(*)from cardekho where year in(2020,2021,2022)group by year;


-------Client asked me to print the total of  cars of the  year----

select year,count(*) from cardekho group by year;

------Client asked to car dealer agent How many diesel cars will there be in 2020?-------
select count(*) from cardekho where year = 2020 and fuel="Diesel"; 


------Client requested a car dealer agent How many petrol cars will there be in 2020?-----
select count(*) from cardekho where year =2020 and fuel="Petrol"; 


----- The manager told the employee to give a print All the fuel car (petrol,diesel, and CNG) come by all years----
Select year, count(*) from cardekho where fuel= "Petrol"group by year;
select year, count(*) from cardekho where fuel= "Diesel" group by year;
select year, count(*) from cardekho where fuel= "CNG" group by year;



-----Manager said there were than 100 cars in a given year, which year had more than 100 cars?----
select year, count(*) from cardekho group by year having count(*)>100;
select year, count(*) from cardekho group by year having count(*)<50;


----- Manager said to the employee all cars count details between 2015 and 2023; we need a complete list.---
select count(*)from cardekho where year between 2015 and 2023; 


----- The manager said to the employee all cars details between 2015 to 2023 we need complete list ----
select * from cardekho where year between 2015 and 2023;


---- Total sum of cardekho ------
select sum(`selling_price`) from cardekho;

select max(`km_driven`) from cardekho;

--- add the table ID ------
 alter table cardekho
 add column ID int  primary key auto_increment;

--- find the km for the any Ids---
select km_driven from cardekho where Id = 3;

-- find the car transmission---

select transmission from cardekho where Id = 3;


--- find the car owner

select owner from cardekho where Id = 3;

--- find the car mileage ---
select mileage from cardekho where Id = 3;
 
 ----- find the cars engine ---
 
 select engine from cardekho where Id = 3;




---  update the base of all employees with the job title containing Manager by increasing it by 10%. 
update sfsalaries.salaries
set BasePay = BasePay * 1.1
where Jobtitle Like '%Manager%';
select * from sfsalaries.salaries;
