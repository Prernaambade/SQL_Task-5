car_order(orderid,orderdate,shipmode,cuastomerid,productid,sales,quantity,discount,product,profit)

create table car_order(
	order_id int primary key,
	order_date date,
	ship_mode varchar(100),
	customer_id varchar(100),
	product_id varchar (100),
	sales int,
	quantity int,
	discount decimal(5,2),
	product varchar(100),
	profit int
)
select * from car_order
insert into car_order values (1001,'2024-10-05','standard','C001','P001',3000,1,0.1,'sedan',2700)
copy car_order from 'D:\SQL Practice\car_order_2_august_2024.csv' DELIMITER ','csv header

--Query no 1
select ship_mode,profit,sum(sales)from car_order group by ship_mode,profit
select ship_mode, profit, sum(sales)from car_order
where profit>2000
group by ship_mode,profit
having sum (sales)>5000

---Query no 2
select ship_mode, profit, sum(sales)from car_order group by ship_mode, profit
select ship_mode, profit, sum(sales)from car_order
where profit >3000
group by ship_mode,profit
having sum (sales)>6000

---Query no 3
select ship_mode, profit, count (sales)from car_order group by ship_mode, profit
select ship_mode, profit, count (sales)from car_order
where profit = 4000
group by ship_mode,profit
having count(sales)=1

---Query no 4
select ship_mode, profit, count (sales)from car_order group by ship_mode, profit
select ship_mode, profit, count (sales)from car_order
where profit > 2500
group by ship_mode,profit
having count(sales)>=1

---Query no 5
select ship_mode, profit, avg (sales)from car_order group by ship_mode, profit
select ship_mode, profit, avg (sales)from car_order
where profit <4000
group by ship_mode,profit
having avg(sales)> 3000

---Query no 6
select ship_mode, profit, avg (sales)from car_order group by ship_mode, profit
select ship_mode, profit, avg (sales)from car_order
where profit = 2992
group by ship_mode,profit
having avg(sales)= 3400

---Query no 7
select ship_mode, profit, max (sales)from car_order group by ship_mode, profit order by sum(sales)DESC
select ship_mode, profit, max(sales)from car_order
where profit >4000
group by ship_mode,profit
having max(sales)>3000

---	Query no 8
select ship_mode, profit, max (sales)from car_order group by ship_mode, profit order by sum(sales)DESC
select ship_mode, profit, max(sales)from car_order
where profit >2000
group by ship_mode,profit
having max(sales)>1500

---Query no 9
select ship_mode, profit, min(sales)from car_order group by ship_mode, profit order by sum(sales)asc
select ship_mode, profit, min(sales)from car_order
where profit >2000
group by ship_mode,profit
having min(sales)>3000

---Query no 10
select ship_mode, profit, min (sales)from car_order group by ship_mode, profit order by sum(sales)asc
select ship_mode, profit, min(sales)from car_order
where profit =2668
group by ship_mode,profit
having min(sales)=2900
















