select
row,
id_ecad,
name,
city_name_geographic,
Concat(street, (case when house is not Null then ', ' end), house) as address,
street,
house,
status

from clients as sln
Where brand like 'MX'
order by row