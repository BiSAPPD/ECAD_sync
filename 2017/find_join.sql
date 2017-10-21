select
	one.brand, one.id, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
	two.brand, two.id, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
from clients_ppd as one
left join clients_ppd as two ON 
	two.brand = 'KR' and one.city_name_geographic = two.city_name_geographic and one.street = two.street and one.house = two.house and one.name = two.name
where  
	one.brand = 'LP' and one.city_name_geographic = two.city_name_geographic and one.street = two.street and one.house = two.house and one.name = two.name
UNION 
select
	one.brand, one.id, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
	two.brand, two.id, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
from clients_ppd as one
left join clients_ppd as two ON 
	two.brand = 'KR' and one.city_name_geographic = two.city_name_geographic and one.street = two.street and one.phone_sln = two.phone_sln
where  
	one.brand = 'LP' and one.phone_sln = two.phone_sln
UNION 
select
	one.brand, one.id, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
	two.brand, two.id, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
from clients_ppd as one
left join clients_ppd as two ON 
	two.brand = 'KR' and one.city_name_geographic = two.city_name_geographic and one.street = two.street and one.email_sln = two.email_sln
where  
	one.brand = 'LP' and one.email_sln = two.email_sln
UNION 
select
	one.brand, one.id, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
	two.brand, two.id, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
from clients_ppd as one
left join clients_ppd as two ON 
	two.brand = 'KR' and one.city_name_geographic = two.city_name_geographic and one.street = two.street and one.mobile_number_mng = two.mobile_number_mng
where  
	one.brand = 'LP' and one.mobile_number_mng = two.mobile_number_mng
UNION 
select
	one.brand, one.id, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
	two.brand, two.id, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
from clients_ppd as one
left join clients_ppd as two ON 
	two.brand = 'KR' and one.city_name_geographic = two.city_name_geographic and one.street = two.street and one.email_mng = two.email_mng
where  
	one.brand = 'LP' and one.email_mng = two.email_mng

order by 9, 8, 6, 7