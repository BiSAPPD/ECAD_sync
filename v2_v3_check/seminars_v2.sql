SELECT
	'LP',
	extract(year from seminars.started_at) as year, 
	extract(month from seminars.started_at) as year, 
	---
	seminars.id as event_id_v2,
	'LP'|| seminars.id as event_id_v2_brd,
	---
	seminars.seminar_type_id as seminar_id_v2,
	'LP' || seminars.seminar_type_id as seminar_id_v2_brd,
	---
	seminars.studio_id AS studio_id_v2,
	'LP' || seminars.studio_id AS studio_id_v2_brand,
	---
	seminars.salon_id AS salons_id_v2,
	'LP' || seminars.salon_id AS salons_id_v2_brd,
	---
	(CASE WHEN seminars.technolog_id IS NOT NULL THEN seminars.technolog_id ELSE seminars.partimer_id END) AS educater_id_v3,
	'LP' || (CASE WHEN seminars.technolog_id IS NOT NULL THEN seminars.technolog_id ELSE seminars.partimer_id END) AS educater_id_v3_brd
from seminars
	left join seminar_types on 
		seminars.seminar_type_id = seminar_types.id
