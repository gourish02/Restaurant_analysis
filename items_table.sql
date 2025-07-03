use restaurant_db;

#View the menu_items table.
select * from menu_items;

#Find the number of items on the menu.
select count(*) from menu_items;

#What are the least and most expensive items on the menu.
select * from menu_items
order by price;

select * from menu_items
order by price desc;

#How many italian dishes are on the menu?
select * from menu_items 
where category = 'italian';

#What are the least and most expensive italian dishes on the menu?
select * from menu_items 
where category = 'italian'
order by price desc;

#How many dishes are in each category?
select category, count(menu_item_id) as num_dishes from menu_items
group by category;

#What is the average dish price within ech category?
select category, avg(price) as avg_price from menu_items
group by category;