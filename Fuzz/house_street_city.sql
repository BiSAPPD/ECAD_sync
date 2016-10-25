select 


(Case when sln.city_name_geographic <> '' and sln.street <> ''  and sln.house <> '' 
    Then 
        Count(Concat(sln.city_name_geographic, sln.street, sln.house)) over (Partition by Concat(sln.city_name_geographic, sln.street, sln.house))
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
sln.row


from clients as sln
Where brand like 'LP%'
group by brand, sln.city_name_geographic, sln.street, sln.house, sln.id_ecad, sln.name,sln.open_date, sln.com_mreg, sln.com_reg, sln.row
--oRDER by  sln.city_name_geographic, sln.street
order by sln.city_name_geographic, sln.street, sln.house, sln.name, brand desc, sln.id_ecad,  sln.open_date