/*
dapatkan nama dan jumlah barang untuk pengguna
yang sudah membeli lebih dari 10 barang
*/
select user_id as id, users.name, count(*) as 'jumlah'
from sales_records join items
on sales_records.item_id = items.id
join users
on sales_records.user_id = users.id
group by user_id
HAVING count(*) >= 10;