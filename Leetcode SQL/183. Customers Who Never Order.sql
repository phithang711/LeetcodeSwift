# Write your MySQL query statement below
select name as "Customers" from Customers
where not exists 
(select customerId from Orders where customerId = Customers.id)