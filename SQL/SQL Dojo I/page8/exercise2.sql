-- dapatkan total harga penjualan dan kelompokan berdasarkan tanggal pembelianya
select purchased_at, sum(price) as "total penjualan"
from sales_records join items
on sales_records.item_id = items.id
group by purchased_at;