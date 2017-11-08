SELECT
	'LP' AS brand,
	extract(year from sme.started_at) as year, 
	extract(month from sme.started_at) as month, 
	---
	sme.id as event_id_v3,
	sme.loreal_former_id as even_id_v2,
	---
	sme.seminar_id as seminar_id_v3,
	sme.loreal_former_id as seminar_id_v2,
	smr.name,
	---
	sme.studio_id as studio_id_v3,
	trc.loreal_former_id as studio_id_v2,
	trc.name || '. ' || trc.address AS studio_name ,
	---
	sme.salon_id AS salon_id_v3,
	sln.loreal_former_id AS salon_id_v2,
	sln.name || '. ' || sln.address AS salon_name,
	---
	sme.educator_id AS educater_id_v3,
	trn.loreal_former_id AS educater_id_v2,
	trn.last_name || ' ' || trn.first_name AS educater_name,
	---
	prt.user_id,
	usr.loreal_former_id,
	usr.last_name || ' ' || usr.first_name AS user_name
from seminar_events AS sme
	left join seminars AS smr on sme.seminar_id = smr.id
	left join users AS trn on sme.educator_id = trn.id
	left join training_centers As trc ON sme.studio_id = trc.id
	left join salons AS sln on sme.salon_id = sln.id
	LEFT JOIN participations AS prt ON sme.id = prt.seminar_event_id 
	LEFT JOIN users AS usr ON prt.user_id = usr.id
where sme.loreal_former_id is not null
union all
SELECT
	'MX' AS brand,
	extract(year from sme.started_at) as year, 
	extract(month from sme.started_at) as month, 
	---
	sme.id as event_id_v3,
	sme.matrix_former_id as even_id_v2,
	---
	sme.seminar_id as seminar_id_v3,
	sme.matrix_former_id as seminar_id_v2,
	smr.name,
	---
	sme.studio_id as studio_id_v3,
	trc.matrix_former_id as studio_id_v2,
	trc.name || '. ' || trc.address AS studio_name ,
	---
	sme.salon_id AS salon_id_v3,
	sln.matrix_former_id AS salon_id_v2,
	sln.name || '. ' || sln.address AS salon_name,
	---
	sme.educator_id AS educater_id_v3,
	trn.matrix_former_id AS educater_id_v2,
	trn.last_name || ' ' || trn.first_name AS educater_name,
	---
	prt.user_id,
	usr.matrix_former_id,
	usr.last_name || ' ' || usr.first_name AS user_name
from seminar_events AS sme
	left join seminars AS smr on sme.seminar_id = smr.id
	left join users AS trn on sme.educator_id = trn.id
	left join training_centers As trc ON sme.studio_id = trc.id
	left join salons AS sln on sme.salon_id = sln.id
	LEFT JOIN participations AS prt ON sme.id = prt.seminar_event_id 
	LEFT JOIN users AS usr ON prt.user_id = usr.id
where sme.matrix_former_id is not null
union all
SELECT
	'KR' AS brand,
	extract(year from sme.started_at) as year, 
	extract(month from sme.started_at) as month, 
	---
	sme.id as event_id_v3,
	sme.kerastase_former_id as even_id_v2,
	---
	sme.seminar_id as seminar_id_v3,
	sme.kerastase_former_id as seminar_id_v2,
	smr.name,
	---
	sme.studio_id as studio_id_v3,
	trc.kerastase_former_id as studio_id_v2,
	trc.name || '. ' || trc.address AS studio_name ,
	---
	sme.salon_id AS salon_id_v3,
	sln.kerastase_former_id AS salon_id_v2,
	sln.name || '. ' || sln.address AS salon_name,
	---
	sme.educator_id AS educater_id_v3,
	trn.kerastase_former_id AS educater_id_v2,
	trn.last_name || ' ' || trn.first_name AS educater_name,
	---
	prt.user_id,
	usr.kerastase_former_id,
	usr.last_name || ' ' || usr.first_name AS user_name
from seminar_events AS sme
	left join seminars AS smr on sme.seminar_id = smr.id
	left join users AS trn on sme.educator_id = trn.id
	left join training_centers As trc ON sme.studio_id = trc.id
	left join salons AS sln on sme.salon_id = sln.id
	LEFT JOIN participations AS prt ON sme.id = prt.seminar_event_id 
	LEFT JOIN users AS usr ON prt.user_id = usr.id
where sme.kerastase_former_id is not null
union all
SELECT
	'RD' AS brand,
	extract(year from sme.started_at) as year, 
	extract(month from sme.started_at) as month, 
	---
	sme.id as event_id_v3,
	sme.redken_former_id as even_id_v2,
	---
	sme.seminar_id as seminar_id_v3,
	sme.redken_former_id as seminar_id_v2,
	smr.name,
	---
	sme.studio_id as studio_id_v3,
	trc.redken_former_id as studio_id_v2,
	trc.name || '. ' || trc.address AS studio_name ,
	---
	sme.salon_id AS salon_id_v3,
	sln.redken_former_id AS salon_id_v2,
	sln.name || '. ' || sln.address AS salon_name,
	---
	sme.educator_id AS educater_id_v3,
	trn.redken_former_id AS educater_id_v2,
	trn.last_name || ' ' || trn.first_name AS educater_name,
	---
	prt.user_id,
	usr.redken_former_id,
	usr.last_name || ' ' || usr.first_name AS user_name
from seminar_events AS sme
	left join seminars AS smr on sme.seminar_id = smr.id
	left join users AS trn on sme.educator_id = trn.id
	left join training_centers As trc ON sme.studio_id = trc.id
	left join salons AS sln on sme.salon_id = sln.id
	LEFT JOIN participations AS prt ON sme.id = prt.seminar_event_id 
	LEFT JOIN users AS usr ON prt.user_id = usr.id
where sme.redken_former_id is not null
order by 1,2