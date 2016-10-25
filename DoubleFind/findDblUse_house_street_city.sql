select 
(Case when sln.city_name_geographic <> '' and sln.street <> ''  and sln.house <> '' 
    Then 
        Count(Concat(sln.city_name_geographic, sln.street, sln.house)) over (Partition by Concat(sln.city_name_geographic, sln.street, sln.house))
end) as dbl_status,

sln.inn,
sln.id,
--concat(sln.name,' ', sln.address, ' ' , sln.city_name_geographic) as fuzz,
sln.name, 
--sln.address, 
sln.city_name_geographic, 
sln.street,
sln.house,
sln.law_name, 

(select count(DISTINCT usr.id) 
    from users as usr 
    left join seminar_users as smu ON usr.id = smu.user_id 
    where sln.id = usr.salon_id or usr.id = sln.salon_manager_id 
) as countUSR,

(select count(DISTINCT smu.user_id) from users as usr 
    left join seminar_users as smu ON usr.id = smu.user_id
    where sln.id = usr.salon_id or usr.id = sln.salon_manager_id 
) as countUsrEducated,

(case when spp.salon_id is not null then 1 else Null end) as club ,

(select count(usr.id)
    from users as usr
    where usr.last_request_at is not null and ( usr.salon_id = sln.id or usr.id = sln.salon_manager_id )  ) as activ_users,

sln.com_mreg,

(select usr.full_name
    from users as usr
    where sln.salon_manager_id = usr.id) as Manager

from salons as sln
left join 
	dblink('dbname=academie', 
	'select Distinct spc.brand_id as brand_id, spcr.salon_id as salon_id
	from special_program_club_records as spcr
	left join special_program_clubs as spc ON spcr.club_id = spc.id') 
        AS spp ( brand_id  integer, salon_id  integer )
	ON
	sln.id = spp.salon_id and spp.brand_id =  

(Case current_database()
                When 'loreal' then 1
                When 'matrix' then 5
                When 'luxe' then 6
                When 'redken' then 7
                When 'essie' then 3
                End)   



group by sln.city_name_geographic, sln.street,  sln.house, sln.id, club
--oRDER by  sln.city_name_geographic, sln.street
order by sln.city_name_geographic, sln.street, sln.house, club, Manager desc , countUSR desc