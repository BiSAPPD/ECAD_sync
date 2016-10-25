select 

(Case when sln.city_name_geographic <> '' and sln.street <> '' and sln.house <> '' and sln.name <> '' Then
    Count(Concat(sln.city_name_geographic, sln.street, sln.house, sln.name)) over (Partition by Concat(sln.city_name_geographic, sln.street, sln.house, sln.name))
end) as dbl_status,

sln.open_date,
sln.id,
sln.name, 
sln.city_name_geographic, 
sln.street,
sln.house,
sln.client_type,
sln.law_name, 
sln.chain_name,
sln.com_mreg,
sln.com_reg,
sln.com_sect

from salons as sln

group by sln.com_mreg, sln.city_name_geographic, sln.street,  sln.house, sln.id, sln.name, sln.open_date
--oRDER by  sln.city_name_geographic, sln.street
order by  sln.city_name_geographic, sln.street,  sln.house, sln.open_date desc