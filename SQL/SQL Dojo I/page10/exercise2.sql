-- dapatkan data untuk 5 produk dengan penjualan tertinggi 
select item_id as id, name, sum(price) as "total penjualan"
from sales_records join items
on sales_records.item_id = items.id
group by item_id
order by sum(price) desc
limit 5;