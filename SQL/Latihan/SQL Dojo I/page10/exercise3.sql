-- dapatkan semua barang dengan total penjualan yang lebih besar dari "hoodie abu-abu"
select item_id as id, name, sum(price) as "total penjualan"
from sales_records join items
on sales_records.item_id = items.id
group by item_id
having sum(price) > (
    select sum(price)
    from sales_records join items
    on sales_records.item_id = items.id
    where items.name = "hoodie abu-abu"
);