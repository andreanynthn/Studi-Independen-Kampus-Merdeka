-- dapatkan total penjualan dan total laba untuk seluruh site
select sum(price) AS "total penjualan", sum(price-cost) AS "total laba"
from items join sales_records
on items.id = item_id;