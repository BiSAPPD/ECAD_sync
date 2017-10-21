select usr.id, usr.fname, usr.lname, usr.email, usr.mobile_number, usr.salon_id, usr.last_request_at, usr.role, usr.updated_at,
cln.name, cln.address, cln.street, cln.city_name_geographic, cln.region_name_geographic,cln.com_mreg,
count(smu.id),
    
sum((Case  when smt.kpis_type in ('Seminars in Salon','Paid Seminars in Studio', 'Free Seminars in Studio') then 1 else 0 end))


from users as usr
left join salons as cln ON usr.salon_id = cln.id
left join seminar_users as smu ON usr.id = smu.user_id
left join seminars as smr ON smu.seminar_id = smr.id
left join seminar_types as smt  ON smr.seminar_type_id = smt.id

group by usr.id, cln.id