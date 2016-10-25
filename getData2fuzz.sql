select 
(Case When sln.city_name_geographic <> '' and sln.street <> '' then
    Count(Concat(sln.city_name_geographic, sln.street)) over (Partition by Concat(sln.city_name_geographic, sln.street))
end) as Dbl_city_street, 

(Case When sln.city_name_geographic <> '' and sln.street <> '' and sln.law_name <> '' Then
    Count(Concat(sln.city_name_geographic, sln.street, sln.law_name)) over (Partition by Concat(sln.city_name_geographic, sln.street, sln.law_name)) 
end) as Dbl_city_street_law_name,

(Case when sln.city_name_geographic <> '' and sln.street <> '' and sln.house <> '' Then
    Count(Concat(sln.city_name_geographic, sln.street, sln.house)) over (Partition by Concat(sln.city_name_geographic, sln.street, sln.house))
end) as Dbl_city_street_house,

(Case When sln.city_name_geographic <> '' and sln.street <> '' and sln.name <> '' then 
    Count(Concat(sln.city_name_geographic, sln.street, sln.name)) over (Partition by Concat(sln.city_name_geographic, sln.street, sln.name))
end) as Dbl_city_street_name, 

(Case when sln.city_name_geographic <> '' and sln.street <> '' and sln.house <> '' and sln.name <> '' Then
    Count(Concat(sln.city_name_geographic, sln.street, sln.house, sln.name)) over (Partition by Concat(sln.city_name_geographic, sln.street, sln.house, sln.name))
end) as Dbl_city_street_house_name,

(Case when sln.city_name_geographic <> '' and sln.street <> '' and sln.house <> '' and sln.name <> '' Then
    row_number()) over (Partition by Concat(sln.city_name_geographic, sln.street, sln.house, sln.name))
end) as Dbl_city_street_house_name,

sln.inn,
sln.id,
--concat(sln.name,' ', sln.address, ' ' , sln.city_name_geographic) as fuzz,
sln.name, 
--sln.address, 
sln.city_name_geographic, 
sln.street,
sln.house,
sln.law_name, 

(select count(DISTINCT usr.id) from users as usr 
left join seminar_users as smu ON usr.id = smu.user_id
where sln.id = usr.salon_id
) as countUSR,

(select count(DISTINCT smu.user_id) from users as usr 
left join seminar_users as smu ON usr.id = smu.user_id
where sln.id = usr.salon_id
) as countUsrEducated,
spp.name,

(select count(usr.id)
from users as usr
where usr.last_request_at is not null and usr.salon_id = sln.id  ) as activ_users,
sln.com_mreg



from salons as sln
left join 
	dblink('dbname=academie', 
	'select spcr.status as status, spc.id as id, spc.name as name, spc.brand_id as brand_id, spcr.salon_id as salon_id

	from special_program_club_records as spcr
	left join special_program_clubs as spc ON spcr.club_id = spc.id') AS spp (status  text, id integer, name text, brand_id  integer, salon_id  integer )
	ON
	sln.id = spp.salon_id and spp.brand_id =  

(Case current_database()
                When 'loreal' then 1
                When 'matrix' then 5
                When 'luxe' then 6
                When 'redken' then 7
                When 'essie' then 3
                End)
	and 
		(case  when spp.name like '%Expert%' then spp.status
			    when spp.name like '%МБК%' then   spp.status
				end)  in ('accepted', 'invited' )



group by sln.city_name_geographic, sln.street, sln.id, spp.name 
--oRDER by  sln.city_name_geographic, sln.street
order by sln.city_name_geographic, sln.street, sln.inn, countUSR desc