
select distinct ppd.salon_code, 
lp.brand, lp.id, lp.id_ecad, lp.salon_code, count(Concat('LP',lp.brand)) over (  order by Concat(lp.salon_code, lp.brand) ),  lp.name, lp.address, lp.street, lp.com_mreg, lp.city_name_geographic, lp.region_name_geographic, lp.phone_sln, lp.email_sln, lp.full_name, lp.mobile_number_mng, lp.email_mng,
mx.brand, mx.id, mx.id_ecad, mx.salon_code, count(Concat('LP',lp.brand)) over (  order by Concat(lp.salon_code, lp.brand) ), mx.name, mx.address, mx.street, mx.com_mreg, mx.city_name_geographic, mx.region_name_geographic, mx.phone_sln, mx.email_sln, mx.full_name, mx.mobile_number_mng, mx.email_mng




from clients_ppd as ppd

left join clients_ppd as lp ON ppd.salon_code = lp.salon_code and lp.brand = 'LP'   
left join clients_ppd as mx ON ppd.salon_code = mx.salon_code and mx.brand = 'MX'


where  char_length(ppd.salon_code) = 9 and lp.salon_code = mx.salon_code

order by ppd.salon_code