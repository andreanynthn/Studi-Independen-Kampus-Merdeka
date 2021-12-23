-- dapatkan id dan nama pengguna yang membeli "sandal"
select user_id as id, users.name
from sales_records join items
on sales_records.item_id = items.id
join users
on sales_records.user_id = users.id
where items.name = "sandal"
group by user_id;