SELECT
	'RD' AS brand,
	extract(year from smr.started_at) as year, 
	extract(month from smr.started_at) as month, 
	smr.id as event_id,
	stp."name" ,
	smr.seminar_type_id as seminar_id,
	(CASE WHEN smr.studio_id = 0 THEN NULL ELSE smr.studio_id  END) AS studio_id,
	std.name || '. ' || std.address AS studio_name,
	smr.salon_id AS salons_id,
	smr.salon_id,
	sln.name || '. ' || sln.address AS salon_name,
	(CASE WHEN smr.technolog_id IS NOT NULL THEN smr.technolog_id ELSE smr.partimer_id END) AS educater_id,
	(CASE when trn.lname || ' ' ||  trn.fname IS NULL THEN smr.technolog_full_name || smr.partimer_full_name ELSE trn.lname || ' ' ||  trn.fname END) AS educater_name,
	(CASE WHEN smu.user_id = 0 THEN NULL ELSE smu.user_id END),
	usr.lname || ' ' || usr.fname	
from seminars AS smr
	left join seminar_types AS stp on smr.seminar_type_id = stp.id
	LEFT JOIN studios AS std ON smr.studio_id = std.id
	LEFT JOIN salons AS sln ON smr.salon_id = sln.id
	LEFT JOIN users AS trn ON  (CASE WHEN smr.technolog_id IS NOT NULL THEN smr.technolog_id ELSE smr.partimer_id END) = trn.id 
	LEFT JOIN seminar_users AS smu ON smr.id = smu.seminar_id
	LEFT JOIN users AS usr ON smu.user_id = usr.id
ORDER BY smr.id