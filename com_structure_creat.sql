select
sln.id,
sln.name,
sln.address, 
sln.city_name_geographic,
--sln.is_closed,
--sln.inn,



	(Case when
		(select slnr.com_sect
		from salons as slnr
		where sln.street = slnr.street and sln.city_name_geographic = slnr.city_name_geographic and slnr.inn = '2017'
		group by  slnr.street, slnr.city_name_geographic, slnr.com_sect
		order by count(slnr.street) desc
		limit 1 ) <> '' then 
			(select slnr.com_sect
			from salons as slnr
			where sln.street =  slnr.street and sln.city_name_geographic = slnr.city_name_geographic  and slnr.inn = '2017'
			group by  slnr.street, slnr.city_name_geographic, slnr.com_sect
			order by count(slnr.street) desc
			limit 1 ) Else
				(select slnr.com_sect
				from salons as slnr
				where sln.city_name_geographic = slnr.city_name_geographic and slnr.inn = '2017' and slnr.city_name_geographic is not Null 
				group by   slnr.city_name_geographic, slnr.com_sect
				order by count(slnr.city_name_geographic) desc
				limit 1 )end)
as com_sect ,




	(Case when
		(select slnr.com_reg
		from salons as slnr
		where sln.street =  slnr.street and sln.city_name_geographic = slnr.city_name_geographic  and slnr.inn = '2017'
		group by  slnr.street, slnr.city_name_geographic, slnr.com_reg
		order by count(slnr.street) desc
		limit 1 ) <> '' then 
			(select slnr.com_reg
			from salons as slnr
			where sln.street =  slnr.street and sln.city_name_geographic = slnr.city_name_geographic  and slnr.inn = '2017'
			group by  slnr.street, slnr.city_name_geographic, slnr.com_reg
			order by count(slnr.street) desc
			limit 1 ) Else
				(select slnr.com_reg
				from salons as slnr
				where sln.city_name_geographic = slnr.city_name_geographic  and slnr.inn = '2017' and slnr.city_name_geographic is not Null 
				group by   slnr.city_name_geographic, slnr.com_reg
				order by count(slnr.city_name_geographic) desc
				limit 1 )end)
as com_reg,



	(Case when
		(select slnr.com_mreg
		from salons as slnr
		where sln.city_name_geographic = slnr.city_name_geographic and slnr.inn = '2017'
		group by  slnr.city_name_geographic, slnr.com_mreg
		order by count(slnr.city_name_geographic) desc
		limit 1 ) <> '' then 
			(select slnr.com_mreg
			from salons as slnr
			where sln.city_name_geographic = slnr.city_name_geographic  and slnr.inn = '2017'
			group by  slnr.city_name_geographic, slnr.com_mreg
			order by count(slnr.city_name_geographic) desc
			limit 1 ) Else
				(select slnr.com_mreg
				from salons as slnr
				where sln.region_name_geographic = slnr.region_name_geographic  and slnr.inn = '2017' and slnr.region_name_geographic is not Null 
				group by   slnr.region_name_geographic, slnr.com_mreg
				order by count(slnr.region_name_geographic) desc
				limit 1 )end)
as com_mreg


from salons as sln
where sln.inn <> '2017' or sln.inn is Null --and sln.id = '18002'
 --sln.com_mreg is Null or sln.com_reg is Null or sln.com_sect is Null ф
order by sln.city_name_geographic, sln.street 