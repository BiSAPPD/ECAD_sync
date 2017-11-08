SELECT
	'LP',
	extract(year from seminar_events.started_at) as year, 
	extract(month from seminar_events.started_at) as year, 
	---
	seminar_events.id as event_id_v3,
	'LP'|| seminar_events.id as event_id_v3_brd,
	seminar_events.loreal_former_id as even_id_v2,
	'LP' || seminar_events.loreal_former_id as even_id_v2_brd,
	---
	seminar_events.seminar_id as seminar_id_v3,
	'LP' || seminar_events.seminar_id as seminar_id_v3_brd,
	seminar_events.loreal_former_id as seminar_id_v2,
	'LP' || seminar_events.loreal_former_id as seminar_id_v2_brd, 
	---
	seminar_events.studio_id as studio_id_v3,
	'LP' || seminar_events.studio_id as studio_id_v3_brd,
	training_centers.loreal_former_id as studio_id_v2,
	'LP'|| training_centers.loreal_former_id as studio_id_v2_brd,
	---
	seminar_events.salon_id AS salon_id_v3,
	'LP' || seminar_events.salon_id AS salon_id_v3_brd,
	salons.loreal_former_id AS salon_id_v2,
	'LP' || salons.loreal_former_id AS salon_id_v2_brd,
	---
	seminar_events.educator_id AS educater_id_v3,
	'LP' || seminar_events.educator_id AS educater_id_v3,
	users.loreal_former_id AS educater_id_v3,
	'LP' || users.loreal_former_id AS educater_id_v3
from seminar_events
	left join seminars on 
		seminar_events.seminar_id = seminars.id
	left join users on 
		seminar_events.educator_id = users.id
	left join training_centers on 
		seminar_events.studio_id = training_centers.id
	left join salons on 
		seminar_events.salon_id = salons.id
    LEFT JOIN participations ON 
		seminar_events.id = participations.seminar_event_id 
where seminar_events.loreal_former_id is not null
UNION ALL
SELECT
	'MX',
	extract(year from seminar_events.started_at) as year, 
	extract(month from seminar_events.started_at) as year, 
	---
	seminar_events.id as event_id_v3,
	'MX'|| seminar_events.id as event_id_v3_brd,
	seminar_events.matrix_former_id as even_id_v2,
	'MX' || seminar_events.matrix_former_id as even_id_v2_brd,
	---
	seminar_events.seminar_id as seminar_id_v3,
	'MX' || seminar_events.seminar_id as seminar_id_v3_brd,
	seminar_events.matrix_former_id as seminar_id_v2,
	'MX' || seminar_events.matrix_former_id as seminar_id_v2_brd, 
	---
	seminar_events.studio_id as studio_id_v3,
	'MX' || seminar_events.studio_id as studio_id_v3_brd,
	training_centers.matrix_former_id as studio_id_v2,
	'MX'|| training_centers.matrix_former_id as studio_id_v2_brd,
	---
	seminar_events.salon_id AS salon_id_v3,
	'MX' || seminar_events.salon_id AS salon_id_v3_brd,
	salons.matrix_former_id AS salon_id_v2,
	'MX' || salons.matrix_former_id AS salon_id_v2_brd,
	---
	seminar_events.educator_id AS educater_id_v3,
	'MX' || seminar_events.educator_id AS educater_id_v3,
	users.matrix_former_id AS educater_id_v3,
	'MX' || users.matrix_former_id AS educater_id_v3
from seminar_events
	left join seminars on 
		seminar_events.seminar_id = seminars.id
	left join users on 
		seminar_events.educator_id = users.id
	left join training_centers on 
		seminar_events.studio_id = training_centers.id
	left join salons on 
		seminar_events.salon_id = salons.id
    LEFT JOIN participations ON 
		seminar_events.id = participations.seminar_event_id 
where seminar_events.matrix_former_id is not null
UNION ALL
SELECT
	'KR',
	extract(year from seminar_events.started_at) as year, 
	extract(month from seminar_events.started_at) as year, 
	---
	seminar_events.id as event_id_v3,
	'KR'|| seminar_events.id as event_id_v3_brd,
	seminar_events.kerastase_former_id as even_id_v2,
	'KR' || seminar_events.kerastase_former_id as even_id_v2_brd,
	---
	seminar_events.seminar_id as seminar_id_v3,
	'KR' || seminar_events.seminar_id as seminar_id_v3_brd,
	seminar_events.kerastase_former_id as seminar_id_v2,
	'KR' || seminar_events.kerastase_former_id as seminar_id_v2_brd, 
	---
	seminar_events.studio_id as studio_id_v3,
	'KR' || seminar_events.studio_id as studio_id_v3_brd,
	training_centers.kerastase_former_id as studio_id_v2,
	'KR'|| training_centers.kerastase_former_id as studio_id_v2_brd,
	---
	seminar_events.salon_id AS salon_id_v3,
	'KR' || seminar_events.salon_id AS salon_id_v3_brd,
	salons.kerastase_former_id AS salon_id_v2,
	'KR' || salons.kerastase_former_id AS salon_id_v2_brd,
	---
	seminar_events.educator_id AS educater_id_v3,
	'KR' || seminar_events.educator_id AS educater_id_v3,
	users.kerastase_former_id AS educater_id_v3,
	'KR' || users.kerastase_former_id AS educater_id_v3
from seminar_events
	left join seminars on 
		seminar_events.seminar_id = seminars.id
	left join users on 
		seminar_events.educator_id = users.id
	left join training_centers on 
		seminar_events.studio_id = training_centers.id
	left join salons on 
		seminar_events.salon_id = salons.id
    LEFT JOIN participations ON 
		seminar_events.id = participations.seminar_event_id 
where seminar_events.kerastase_former_id is not null
UNION ALL
SELECT
	'RD',
	extract(year from seminar_events.started_at) as year, 
	extract(month from seminar_events.started_at) as year, 
	---
	seminar_events.id as event_id_v3,
	'RD'|| seminar_events.id as event_id_v3_brd,
	seminar_events.redken_former_id as even_id_v2,
	'RD' || seminar_events.redken_former_id as even_id_v2_brd,
	---
	seminar_events.seminar_id as seminar_id_v3,
	'RD' || seminar_events.seminar_id as seminar_id_v3_brd,
	seminar_events.redken_former_id as seminar_id_v2,
	'RD' || seminar_events.redken_former_id as seminar_id_v2_brd, 
	---
	seminar_events.studio_id as studio_id_v3,
	'RD' || seminar_events.studio_id as studio_id_v3_brd,
	training_centers.redken_former_id as studio_id_v2,
	'RD'|| training_centers.redken_former_id as studio_id_v2_brd,
	---
	seminar_events.salon_id AS salon_id_v3,
	'RD' || seminar_events.salon_id AS salon_id_v3_brd,
	salons.redken_former_id AS salon_id_v2,
	'RD' || salons.redken_former_id AS salon_id_v2_brd,
	---
	seminar_events.educator_id AS educater_id_v3,
	'RD' || seminar_events.educator_id AS educater_id_v3,
	users.redken_former_id AS educater_id_v3,
	'RD' || users.redken_former_id AS educater_id_v3
from seminar_events
	left join seminars on 
		seminar_events.seminar_id = seminars.id
	left join users on 
		seminar_events.educator_id = users.id
	left join training_centers on 
		seminar_events.studio_id = training_centers.id
	left join salons on 
		seminar_events.salon_id = salons.id
    LEFT JOIN participations ON 
		seminar_events.id = participations.seminar_event_id 
where seminar_events.redken_former_id is not null
order by 1,2
