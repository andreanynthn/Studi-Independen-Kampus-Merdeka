-- dapatkan nama dan jumlah penjualan unit untuk 5 barang dengan penjualan tertinggi
SELECT item_id AS id, name, COUNT(*)
FROM sales_records join items
on item_id = items.id
GROUP BY item_id
order by count(*) desc
LIMIT 5;