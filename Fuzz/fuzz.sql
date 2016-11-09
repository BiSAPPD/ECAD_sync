select 

brand,
concat(sln.name, ' ', sln.city_name_geographic, ' ', sln.street, ' ', sln.house) as fuzz,
sln.id_ecad,
sln.name, 
sln.city_name_geographic, 
sln.street,
sln.house,
sln.open_date,
sln.com_mreg,
sln.status,
sln.row


from clients as sln 
Where brand like 'MX' and sln.status is  Null
-- group by brand, sln.city_name_geographic, sln.street, sln.house, sln.id_ecad, sln.name,sln.open_date, sln.com_mreg, sln.com_reg, sln.row, sln.status
--oRDER by  sln.city_name_geographic, sln.street
order by sln.city_name_geographic, sln.street, sln.house, sln.name, brand desc, sln.id_ecad,  sln.open_date