/* 
dapatkan jumlah total usia unik pengguna dan
kelompokan pengguna tersebut berdasarkan usia
*/
SELECT age, COUNT(age) AS "Jumlah"
FROM users
GROUP BY age;