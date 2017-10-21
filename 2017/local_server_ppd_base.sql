lp.brand, lp.id, lp.id_ecad, lp.salon_code, lp.name, lp.address, lp.street, lp.house, lp.com_mreg, lp.city_name_geographic, lp.region_name_geographic, lp.phone_sln, lp.email_sln, lp.full_name, lp.mobile_number_mng, lp.email_mng,


select distinct ppd.salon_code, 
kr.brand, kr.id, kr.id_ecad, kr.salon_code, kr.name, kr.address, kr.street, kr.com_mreg, kr.city_name_geographic, kr.region_name_geographic, kr.phone_sln, kr.email_sln, kr.full_name, kr.mobile_number_mng, kr.email_mng,
rd.brand, rd.id, rd.id_ecad, rd.salon_code, rd.name, rd.address, rd.street, rd.com_mreg, rd.city_name_geographic, rd.region_name_geographic, rd.phone_sln, rd.email_sln, rd.full_name, rd.mobile_number_mng, rd.email_mng,
lp.brand, lp.id, lp.id_ecad, lp.salon_code, lp.name, lp.address, lp.street, lp.com_mreg, lp.city_name_geographic, lp.region_name_geographic, lp.phone_sln, lp.email_sln, lp.full_name, lp.mobile_number_mng, lp.email_mng,
mx.brand, mx.id, mx.id_ecad, mx.salon_code, mx.name, mx.address, mx.street, mx.com_mreg, mx.city_name_geographic, mx.region_name_geographic, mx.phone_sln, mx.email_sln, mx.full_name, mx.mobile_number_mng, mx.email_mng,
es.brand, es.id, es.id_ecad, es.salon_code, es.name, es.address, es.street, es.com_mreg, es.city_name_geographic, es.region_name_geographic, es.phone_sln, es.email_sln, es.full_name, es.mobile_number_mng, es.email_mng


from clients_ppd as ppd

left join clients_ppd as kr ON ppd.salon_code = kr.salon_code and kr.brand = 'KR'
left join clients_ppd as rd ON ppd.salon_code = rd.salon_code and rd.brand = 'RD'
left join clients_ppd as lp ON ppd.salon_code = lp.salon_code and lp.brand = 'LP'
left join clients_ppd as mx ON ppd.salon_code = mx.salon_code and mx.brand = 'MX'
left join clients_ppd as es ON ppd.salon_code = es.salon_code and es.brand = 'ES'

where  char_length(ppd.salon_code) = 9

order by ppd.salon_code


