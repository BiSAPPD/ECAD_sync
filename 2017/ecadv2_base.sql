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


select 
region_name_geographic, city_name_geographic, street,
house, initcap(name) as name, brand, phone_sln, email_sln, salon_manager_id, full_name, fname, lname, mobile_number_mng, email_mng, com_mreg, com_reg, com_sector,  id_ecad, salon_code

from clients_ppd


order by region_name_geographic, city_name_geographic, street, house, name
