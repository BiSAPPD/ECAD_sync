select 


(Case when sln.city_name_geographic <> '' and sln.street <> ''   and sln.name <> ''
    Then 
        Count(Concat(sln.city_name_geographic, sln.street,  sln.name )) over (Partition by Concat(sln.city_name_geographic, sln.street,  sln.name))
end) as dbl_status,
brand,
sln.id_ecad,
sln.name, 
sln.city_name_geographic, 
sln.street,
sln.house,
sln.open_date,
sln.com_mreg,
sln.com_reg,
sln.row,
sln.status


from clients as sln
Where brand like 'MX%'
group by brand, sln.city_name_geographic, sln.street, sln.house, sln.id_ecad, sln.name,sln.open_date, sln.com_mreg, sln.com_reg, sln.row, sln.status
--oRDER by  sln.city_name_geographic, sln.street
order by sln.city_name_geographic, sln.street, sln.house, sln.name, brand desc, sln.id_ecad,  sln.open_date