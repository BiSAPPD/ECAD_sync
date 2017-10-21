With clients as (
select * 
from dblink('dbname=loreal user=readonly password=sdfm6234vsj',
	'select 
		(Case current_database()
			When ''loreal'' then ''LP''
			When ''matrix'' then ''MX''
			When ''luxe'' then ''KR''
			When ''redken'' then ''RD''
			When ''essie'' then ''ES''
			End),
		sln.id,
		sln.name,
		sln.address,
		sln.salon_code,
		sln.street,
		sln.house,
		sln.com_mreg,
		sln.com_reg,
		sln.com_sect,
		sln.city_name_geographic,
		sln.region_name_geographic,
		sln.phone,
		sln.email,
		sln.salon_manager_id,
		usr.full_name,
		usr.fname,
		usr.lname,
		usr.mobile_number,
		usr.email
	    from salons as sln
	    left join users as usr ON sln.salon_manager_id = usr.id') 

	    As LP (
    
	    brand VARCHAR (255),
	    id_ecad  int,
	    name  VARCHAR(255),
	    address  VARCHAR(255),
	    salon_code  VARCHAR(255),
	    street  VARCHAR(255),
	    house  VARCHAR(255),
	    com_mreg  VARCHAR(255),
	    com_reg  VARCHAR(255),
	    com_sector  VARCHAR(255),
	    city_name_geographic  VARCHAR(255),
	    region_name_geographic  VARCHAR(255),
	    phone_sln  VARCHAR(255),
	    email_sln  VARCHAR(255),
	    salon_manager_id  VARCHAR(255),
	    full_name  VARCHAR(255),
	    fname  VARCHAR(255),
	    lname  VARCHAR(255),
	    mobile_number_mng  VARCHAR(255),
	    email_mng VARCHAR(255))
	    
UNION ALL

select * 
from dblink('dbname=matrix user=readonly password=sdfm6234vsj',
	'select 
		(Case current_database()
			When ''loreal'' then ''LP''
			When ''matrix'' then ''MX''
			When ''luxe'' then ''KR''
			When ''redken'' then ''RD''
			When ''essie'' then ''ES''
			End),
		sln.id,
		sln.name,
		sln.address,
		sln.salon_code,
		sln.street,
		sln.house,
		sln.com_mreg,
		sln.com_reg,
		sln.com_sect,
		sln.city_name_geographic,
		sln.region_name_geographic,
		sln.phone,
		sln.email,
		sln.salon_manager_id,
		usr.full_name,
		usr.fname,
		usr.lname,
		usr.mobile_number,
		usr.email
	    from salons as sln
	    left join users as usr ON sln.salon_manager_id = usr.id') 

	    As MX (
    
	    brand VARCHAR (255),
	    id_ecad  int,
	    name  VARCHAR(255),
	    address  VARCHAR(255),
	    salon_code  VARCHAR(255),
	    street  VARCHAR(255),
	    house  VARCHAR(255),
	    com_mreg  VARCHAR(255),
	    com_reg  VARCHAR(255),
	    com_sector  VARCHAR(255),
	    city_name_geographic  VARCHAR(255),
	    region_name_geographic  VARCHAR(255),
	    phone_sln  VARCHAR(255),
	    email_sln  VARCHAR(255),
	    salon_manager_id  VARCHAR(255),
	    full_name  VARCHAR(255),
	    fname  VARCHAR(255),
	    lname  VARCHAR(255),
	    mobile_number_mng  VARCHAR(255),
	    email_mng VARCHAR(255))
	    
UNION ALL

select * 
from dblink('dbname=luxe user=readonly password=sdfm6234vsj',
	'select 
		(Case current_database()
			When ''loreal'' then ''LP''
			When ''matrix'' then ''MX''
			When ''luxe'' then ''KR''
			When ''redken'' then ''RD''
			When ''essie'' then ''ES''
			End),
		sln.id,
		sln.name,
		sln.address,
		sln.salon_code,
		sln.street,
		sln.house,
		sln.com_mreg,
		sln.com_reg,
		sln.com_sect,
		sln.city_name_geographic,
		sln.region_name_geographic,
		sln.phone,
		sln.email,
		sln.salon_manager_id,
		usr.full_name,
		usr.fname,
		usr.lname,
		usr.mobile_number,
		usr.email
	    from salons as sln
	    left join users as usr ON sln.salon_manager_id = usr.id') 

	    As KR(
    
	    brand VARCHAR (255),
	    id_ecad  int,
	    name  VARCHAR(255),
	    address  VARCHAR(255),
	    salon_code  VARCHAR(255),
	    street  VARCHAR(255),
	    house  VARCHAR(255),
	    com_mreg  VARCHAR(255),
	    com_reg  VARCHAR(255),
	    com_sector  VARCHAR(255),
	    city_name_geographic  VARCHAR(255),
	    region_name_geographic  VARCHAR(255),
	    phone_sln  VARCHAR(255),
	    email_sln  VARCHAR(255),
	    salon_manager_id  VARCHAR(255),
	    full_name  VARCHAR(255),
	    fname  VARCHAR(255),
	    lname  VARCHAR(255),
	    mobile_number_mng  VARCHAR(255),
	    email_mng VARCHAR(255))
	    
UNION ALL

select * 
from dblink('dbname=redken user=readonly password=sdfm6234vsj',
	'select 
		(Case current_database()
			When ''loreal'' then ''LP''
			When ''matrix'' then ''MX''
			When ''luxe'' then ''KR''
			When ''redken'' then ''RD''
			When ''essie'' then ''ES''
			End),
		sln.id,
		sln.name,
		sln.address,
		sln.salon_code,
		sln.street,
		sln.house,
		sln.com_mreg,
		sln.com_reg,
		sln.com_sect,
		sln.city_name_geographic,
		sln.region_name_geographic,
		sln.phone,
		sln.email,
		sln.salon_manager_id,
		usr.full_name,
		usr.fname,
		usr.lname,
		usr.mobile_number,
		usr.email
	    from salons as sln
	    left join users as usr ON sln.salon_manager_id = usr.id') 

	    As RD (
    
	    brand VARCHAR (255),
	    id_ecad  int,
	    name  VARCHAR(255),
	    address  VARCHAR(255),
	    salon_code  VARCHAR(255),
	    street  VARCHAR(255),
	    house  VARCHAR(255),
	    com_mreg  VARCHAR(255),
	    com_reg  VARCHAR(255),
	    com_sector  VARCHAR(255),
	    city_name_geographic  VARCHAR(255),
	    region_name_geographic  VARCHAR(255),
	    phone_sln  VARCHAR(255),
	    email_sln  VARCHAR(255),
	    salon_manager_id  VARCHAR(255),
	    full_name  VARCHAR(255),
	    fname  VARCHAR(255),
	    lname  VARCHAR(255),
	    mobile_number_mng  VARCHAR(255),
	    email_mng VARCHAR(255))
	    
UNION ALL

select * 
from dblink('dbname=essie user=readonly password=sdfm6234vsj',
	'select 
		(Case current_database()
			When ''loreal'' then ''LP''
			When ''matrix'' then ''MX''
			When ''luxe'' then ''KR''
			When ''redken'' then ''RD''
			When ''essie'' then ''ES''
			End),
		sln.id,
		sln.name,
		sln.address,
		sln.salon_code,
		sln.street,
		sln.house,
		sln.com_mreg,
		sln.com_reg,
		sln.com_sect,
		sln.city_name_geographic,
		sln.region_name_geographic,
		sln.phone,
		sln.email,
		sln.salon_manager_id,
		usr.full_name,
		usr.fname,
		usr.lname,
		usr.mobile_number,
		usr.email
	    from salons as sln
	    left join users as usr ON sln.salon_manager_id = usr.id') 

	    As ES (
    
	    brand VARCHAR (255),
	    id_ecad  int,
	    name  VARCHAR(255),
	    address  VARCHAR(255),
	    salon_code  VARCHAR(255),
	    street  VARCHAR(255),
	    house  VARCHAR(255),
	    com_mreg  VARCHAR(255),
	    com_reg  VARCHAR(255),
	    com_sector  VARCHAR(255),
	    city_name_geographic  VARCHAR(255),
	    region_name_geographic  VARCHAR(255),
	    phone_sln  VARCHAR(255),
	    email_sln  VARCHAR(255),
	    salon_manager_id  VARCHAR(255),
	    full_name  VARCHAR(255),
	    fname  VARCHAR(255),
	    lname  VARCHAR(255),
	    mobile_number_mng  VARCHAR(255),
	    email_mng VARCHAR(255))

) , clients_ppd as (

select 

brand,
id_ecad,
TRIM(lower(replace(name, '"', ''))) as name,
address,
salon_code,
street,
house,
com_mreg,
com_reg,
com_sector,
city_name_geographic,
region_name_geographic,
(case when char_length(phone_sln) > 9 then '+'||replace(replace(replace(replace(replace(replace(phone_sln, '+', ''), '(', '' ), ')', ''), '-', ''), ' ', ''), '−', '') else Null end) as phone_sln,
email_sln,
salon_manager_id,
trim(Concat(fname, ' ' , lname)) as full_name,
fname,
lname,
(case when char_length(mobile_number_mng) > 9 then '+'||replace(replace(replace(replace(replace(replace(mobile_number_mng, '+', ''), '(', '' ), ')', ''), '-', ''), ' ', ''), '−', '') else Null end) as mobile_number_mng ,
email_mng
from clients)

-- LP <-> KR
	select
		one.brand, 1, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'KR' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом
		one.name = two.name and  --название

		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1 -- контакты салона 

	where  
		one.brand = 'LP' and two.brand = 'KR' 

UNION 

	select
		one.brand, 1, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'KR' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом
		one.name = two.name and  --название
		
		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
	
	where  
		one.brand = 'LP' and two.brand = 'KR'
--1.5
UNION	

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'KR' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		one.name = two.name and  --название

		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1  -- контакты салона
	where  
		one.brand = 'LP' and two.brand = 'KR'

UNION	

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'KR' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом


		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1  -- контакты салона
	where  
		one.brand = 'LP' and two.brand = 'KR' 

UNION 

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'KR' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		one.name = two.name and  --название
		
		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
	where  
		one.brand = 'LP' and two.brand = 'KR'

UNION 

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'KR' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and  -- дом

		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
	where  
		one.brand = 'LP' and two.brand = 'KR'
--2
UNION 

	select
		one.brand, 2, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 2, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'KR' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом
		one.name = two.name   --название
	where  
		one.brand = 'LP' and two.brand = 'KR'

--2.5
UNION 

	select
		one.brand, 2.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 2.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'KR' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1 -- контакты салона
	where  
		one.brand = 'LP' and two.brand = 'KR' 

UNION 

	select
		one.brand, 2.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 2.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'KR' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
		
	where  
		one.brand = 'LP' and two.brand = 'KR'

-- LP <-> RD
UNION
	select
		one.brand, 1, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом
		one.name = two.name and  --название

		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1 -- контакты салона 

	where  
		one.brand = 'LP' and two.brand = 'RD' 

UNION 

	select
		one.brand, 1, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом
		one.name = two.name and  --название
		
		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
	
	where  
		one.brand = 'LP' and two.brand = 'RD'
--1.5
UNION	

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		one.name = two.name and  --название

		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1  -- контакты салона
	where  
		one.brand = 'LP' and two.brand = 'RD'

UNION	

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом


		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1  -- контакты салона
	where  
		one.brand = 'LP' and two.brand = 'RD' 

UNION 

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		one.name = two.name and  --название
		
		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
	where  
		one.brand = 'LP' and two.brand = 'RD'

UNION 

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and  -- дом

		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
	where  
		one.brand = 'LP' and two.brand = 'RD'
--2
UNION 

	select
		one.brand, 2, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 2, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом
		one.name = two.name   --название
	where  
		one.brand = 'LP' and two.brand = 'RD'

--2.5
UNION 

	select
		one.brand, 2.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 2.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1 -- контакты салона
	where  
		one.brand = 'LP' and two.brand = 'RD' 

UNION 

	select
		one.brand, 2.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 2.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
		
	where  
		one.brand = 'LP' and two.brand = 'RD'

-- LP <-> MX
UNION
	select
		one.brand, 1, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'MX' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом
		one.name = two.name and  --название

		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1 -- контакты салона 

	where  
		one.brand = 'LP' and two.brand = 'MX' 

UNION 

	select
		one.brand, 1, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'MX' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом
		one.name = two.name and  --название
		
		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
	
	where  
		one.brand = 'LP' and two.brand = 'MX'
--1.5
UNION	

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'MX' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		one.name = two.name and  --название

		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1  -- контакты салона
	where  
		one.brand = 'LP' and two.brand = 'MX'

UNION	

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'MX' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом


		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1  -- контакты салона
	where  
		one.brand = 'LP' and two.brand = 'MX' 

UNION 

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'MX' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		one.name = two.name and  --название
		
		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
	where  
		one.brand = 'LP' and two.brand = 'MX'

UNION 

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'MX' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and  -- дом

		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
	where  
		one.brand = 'LP' and two.brand = 'MX'
--2
UNION 

	select
		one.brand, 2, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 2, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'MX' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом
		one.name = two.name   --название
	where  
		one.brand = 'LP' and two.brand = 'MX'

--2.5
UNION 

	select
		one.brand, 2.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 2.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'MX' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1 -- контакты салона
	where  
		one.brand = 'LP' and two.brand = 'MX' 

UNION 

	select
		one.brand, 2.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 2.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'MX' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
		
	where  
		one.brand = 'LP' and two.brand = 'MX'

-- KR <-> RD
UNION
	select
		one.brand, 1, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом
		one.name = two.name and  --название

		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1 -- контакты салона 

	where  
		one.brand = 'KR' and two.brand = 'RD' 

UNION 

	select
		one.brand, 1, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом
		one.name = two.name and  --название
		
		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
	
	where  
		one.brand = 'KR' and two.brand = 'RD'
--1.5
UNION	

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		one.name = two.name and  --название

		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1  -- контакты салона
	where  
		one.brand = 'KR' and two.brand = 'RD'

UNION	

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом


		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1  -- контакты салона
	where  
		one.brand = 'KR' and two.brand = 'RD' 

UNION 

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		one.name = two.name and  --название
		
		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
	where  
		one.brand = 'KR' and two.brand = 'RD'

UNION 

	select
		one.brand, 1.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 1.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and  -- дом

		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
	where  
		one.brand = 'KR' and two.brand = 'RD'
--2
UNION 

	select
		one.brand, 2, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 2, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица
		one.house = two.house and -- дом
		one.name = two.name   --название
	where  
		one.brand = 'KR' and two.brand = 'RD'

--2.5
UNION 

	select
		one.brand, 2.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 2.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON  two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		((case when char_length(one.phone_sln) > 5 then 
			(case when one.phone_sln = two.phone_sln then 1 else 0 end)
			else 0 end ) +
		(case when char_length(one.email_sln) > 5 then 
			(case when one.email_sln = two.email_sln then 1 else 0 end)
			else 0 end ) ) > 1 -- контакты салона
	where  
		one.brand = 'KR' and two.brand = 'RD' 

UNION 

	select
		one.brand, 2.5, one.id_ecad, one.salon_code, one.name, one.street, one.house,  one.city_name_geographic,  one.region_name_geographic, one.com_mreg, one.phone_sln, one.email_sln, one.full_name, one.mobile_number_mng, one.email_mng,
		two.brand, 2.5, two.id_ecad, two.salon_code, two.name, two.street, two.house, two.city_name_geographic, two.region_name_geographic,  two.com_mreg,  two.phone_sln, two.email_sln, two.full_name, two.mobile_number_mng, two.email_mng
	from clients_ppd as one
	left join clients_ppd as two ON two.brand = 'RD' and 
		one.city_name_geographic = two.city_name_geographic and  --город
		one.street = two.street and  -- улица

		((case when char_length(one.mobile_number_mng) > 5 then
			(case when one.mobile_number_mng  = two.mobile_number_mng then 1 else 0 End)
				else 0 end) +
		(case when char_length(one.email_mng) > 5 then
			(case when one.email_mng = two.email_mng then 1 else 0 end)
				else 0 end)) > 1 --контакты менеджера
		
	where  
		one.brand = 'KR' and two.brand = 'RD'


order by 9, 8, 6, 7, 2