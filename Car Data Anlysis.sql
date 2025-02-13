-- let's use the database
use Car_Dekho;
-- let's change the table name
alter table `car details from car dekho`  
rename to `car`;
-- DATA CLEANING
-- checking null values
select * from car where  name is null; 
select * from car where  year is null;
select * from car where  selling_price is null;
select * from car where  km_driven is null;
select * from car where  fuel is null;
select * from car where  seller_type is null;
select * from car where  transmission is null;
select * from car where  owner is null;

-- there no null values present in data

-- let's check duplicated values
  select name,count(*) from car group by name having count(*)>1;
  select * from car;
-- let's check datatypes
describe car;

-- all ok ready to go  

-- 1. What is the total number of cars available in the dataset? 
select count(*) from car; -- 4340
-- 2. What is the average selling price of cars? 
select round(avg(selling_price),1) from car; -- 504127.3
-- 3. What is the highest and lowest selling price recorded? 
select min(selling_price) lowest_selling_price,max(selling_price) highest_selling_price from car; -- 20000	8900000
-- 4. How many cars are available for each fuel type? 
select fuel,count(*) from car group by fuel;
-- Petrol	2123
-- Diesel	2153
-- CNG	40
-- LPG	23
-- Electric	1
-- 5. What is the average selling price for each fuel type? 
select fuel,round(avg(selling_price),0) from car group by fuel;
-- Petrol	344840
-- Diesel	669094
-- CNG	277175
-- LPG	167826
-- Electric	310000
-- 6. How many cars have been sold by individuals vs. dealers? 
select seller_type,count(*) from car group by  seller_type;
-- Individual	3244
-- Dealer	994
-- Trustmark Dealer	102
-- 7. What is the average selling price of cars sold by individuals vs. dealers? 
select seller_type,round(avg(selling_price),0) from car group by  seller_type;
-- Individual	424505
-- Dealer	721823
-- Trustmark Dealer	914951
-- 8. How many cars are manual vs. automatic? 
select transmission ,count(*) from car group by transmission;
-- Manual	3892
-- Automatic	448
-- 9. What is the average selling price of manual vs. automatic cars? 
select transmission ,round(avg(selling_price),0) from car group by transmission;
-- Manual	400067
-- Automatic	1408154
-- 10. What is the most common ownership type? 
select owner,count(*) from car group by owner; -- First Owner	2832
-- 11. What is the average selling price for each ownership type? 
select owner,round(avg(selling_price),0) from car group by owner;
-- First Owner	598637
-- Second Owner	343891
-- Fourth & Above Owner	173901
-- Third Owner	269474
-- Test Drive Car	954294
-- 12. What is the total number of cars sold each year? 
select year,count(name) from car group by year;
-- 2007	134
-- 2012	415
-- 2017	466
-- 2014	367
-- 2016	357
-- 2015	421
-- 2018	366
-- 2019	195
-- 2013	386
-- 2011	271
-- 2010	234
-- 2009	193
-- 2006	110
-- 1996	2
-- 2005	85
-- 2008	145
-- 2004	42
-- 1998	12
-- 2003	23
-- 2002	21
-- 2020	48
-- 2000	12
-- 1999	10
-- 2001	20
-- 1995	1
-- 1997	3
-- 1992	1
-- 13. What is the trend of car sales over the years? 
select year,count(name) from car group by year order by year; -- there are increasing trendof car in year wise  
-- 14. What is the average price of cars based on their manufacturing year? 
select year,round(avg(selling_price),0) from car group by year;
-- 2007	162828
-- 2012	371629
-- 2017	768910
-- 2014	523232
-- 2016	608364
-- 2015	528943
-- 2018	910770
-- 2019	1059020
-- 2013	484801
-- 2011	293638
-- 2010	269678
-- 2009	229565
-- 2006	157800
-- 1996	225000
-- 2005	109013
-- 2008	174201
-- 2004	121750
-- 1998	214000
-- 2003	86565
-- 2002	90714
-- 2020	818479
-- 2000	81500
-- 1999	73500
-- 2001	117650
-- 1995	95000
-- 1997	93000
-- 1992	50000-- 
select * from car;

-- 16. What is the total number of cars driven more than 100,000 km?
select count(name) from car where km_driven>100000; -- 720
-- 17. What is the average selling price of cars driven more than 100,000 km? 
select avg(selling_price) from car where km_driven>100000; -- 360443.1750

-- 19. Which car models have been sold the most? 
select name,count(*) from car group by name order by count(*) desc limit 1; -- Maruti Swift Dzire VDI	80
-- 20. What is the most expensive car model in the dataset? 
select name from car where selling_price=(select max(selling_price) from car) ; -- Audi RS7 2015-2019 Sportback Performance
-- 21. What is the cheapest car model in the dataset? 
select name from car where selling_price=(select min(selling_price) from car) ; -- Ford Ikon 1.6 ZXI NXt
-- 22. How many cars have a selling price of more than 10,00,000 INR? 
select count(*) from car where selling_price> 1000000; -- 342
-- 23. What is the total revenue generated from all car sales? 
select sum(selling_price) from car; -- 2187912533
-- 24. What is the revenue generated from individual sellers vs. dealers? 
select seller_type,sum(selling_price) from car group by seller_type;
-- Individual	1377095580
-- Dealer	717491953
-- Trustmark Dealer	93325000
-- 25. How many first-owner cars are available for sale? 
select owner,count(*) from car group by owner ;
-- First Owner	2832
-- Second Owner	1106
-- Fourth & Above Owner	81
-- Third Owner	304
-- Test Drive Car	17
-- 26. What is the average selling price of first-owner cars? 
select avg(selling_price) from car where owner='First Owner'; -- 598636.9696
-- 27. How many second-owner cars are available for sale? 
select count(*) from car where owner='Second Owner'; -- 1106
-- 28. What is the average selling price of second-owner cars? 
select avg(selling_price) from car where owner='Second Owner'; -- 343891.0886
-- 29. How many third-owner or more cars are available for sale? 
select count(selling_price) from car where owner='Third Owner'; -- 304
-- 30. What is the average selling price of third-owner or more cars? 
select avg(selling_price) from car where owner='Third Owner'; -- 269474.0033
-- 31. What are the top 5 most frequently sold car brands? 
select name,count(*) from car group by name order by count(*) desc limit 5; -- Maruti Swift Dzire VDI	80


-- 32. What is the average price of cars from the top 5 most frequently sold brands?
select name,count(*) from car group by name having selling_price=(select avg(selling_price) from car) order by count(*) ;
describe car;

 
 
 
 

-- 34. How many cars are available in each price range (e.g., <2 lakh, 2-5 lakh, 5-10 lakh, etc.)? 

alter table car
add column price_range varchar(33);

update table 
set price_range=case 
                       when  selling_price<200000 then '<2 lakh'
                       when  selling_price<200000 then '2-5 lakh'
                       when  selling_price<200000 then '5-10 lakh'
			end price_range;
            
select price_range,count(*) from car group by price_range;            
            
            
    
-- 35. Which seller type has sold the most cars? 
select seller_type,count(*) from car group by seller_type;
-- Individual	3244
-- Dealer	994
-- Trustmark Dealer	102
-- 36. Which fuel type has the highest resale value? 
select fuel,count(*) from car group by fuel order by count(*); -- Diesel	2153

-- 37. Which transmission type has the highest resale value? 
select transmission,count(*) from car group by transmission order by count(*); -- Manual	3892

-- 38. What is the distribution of car sales based on km driven ranges (e.g., <50,000 km, 50,000-100,000 
-- km, etc.)? 



-- 40. Which fuel type is most common among first-owner cars? 
select fuel,count(*) from car group by fuel having `owner`=`First Owner` order by count(*) ;


-- 41. What is the average price of diesel cars compared to petrol cars? 
select fuel ,avg(selling_price) from car group by fuel;
-- Petrol	344840.1375
-- Diesel	669094.2522



-- 42. What percentage of cars are sold by individual sellers? 
with percent as  (

select count(*) as Ind from car where seller_type='Individual'

)
select ((Ind/count(*) )*100) as Percent from car join percent on car.name=percent.name  where seller_type='Individual';


-- 43. What is the percentage distribution of transmission types? 
select 
transmission,
count(*) Total_Cars,
(count(*)*100.0/sum(count(*)) over()) as percentage
from car
group by transmission
order by percentage desc;
-- 44. What percentage of cars are first-owner, second-owner, and third-owner or more? 
select 
    owner, 
    COUNT(*) AS total_cars, 
    (COUNT(*) * 100.0 / SUM(COUNT(*)) OVER ()) AS percentage 
from car
group by  owner;

-- 45. Which manufacturing year has the most second-owner cars? 
select year,count(*) from car where owner='Second Owner' group by year ;
-- 46. Which fuel type has the most cars driven above 1 lakh km? 
use Car_dekho;
select fuel,count(km_driven) from car where km_driven>1000000 group by fuel ;
-- 47. How many automatic cars are first-owner cars? 
select name,count(*) from car where transmission='Automatic' and owner='Frist Owner' group by name ; 
-- 48. How many diesel cars are available in each seller type category? 
select seller_type,count(*) from car where fuel='Diesel' group by seller_type ;
select * from car;
-- 49. What is the trend of car sales over the years? 
select year,count(name) from car group by year order by year;
-- we have positive trend in car sales as year on year sales incresing
-- 50. Which factors have the most impact on the sales of a car?
select * from car;
select owner,count(name) from car group by owner  ;
-- First Owner	2832
-- Second Owner	1106
-- Fourth & Above Owner	81
-- Third Owner	304
-- Test Drive Car	17
select transmission,count(name) from car group by transmission ;
-- Manual	3892
-- Automatic	448
select seller_type,count(name) from car group by seller_type ;
-- Individual	3244
-- Dealer	994
-- Trustmark Dealer	102
select fuel,count(name) from car group by fuel ;
-- Petrol	2123
-- Diesel	2153
-- CNG	40
-- LPG	23
-- Electric	1
-- Owner ,Transmission,Fuel seller_type has high impact on sales
