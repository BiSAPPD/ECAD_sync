select smr.id, smr.seminar_type_id, smr.name, smt.name,  smr.studio_id, smr.studio_name,
(case when smr.technolog_id is not null then smr.technolog_id || '' else
	(case when smr.partimer_id is not null then smr.partimer_id || '' else
		(case when smr.partner_id is not null then smr.partner_id || '' else
			(case when smr.beauty_consultant_id is not null then smr.beauty_consultant_id end) end) end ) end ) as educater_id,
			
smr.started_at, smr.closed_at, smr.salon_id,  smr.is_closed , usr.lname || ' ' || usr.fname
from seminars as smr
left join users as usr on  (case when smr.technolog_id is not null then smr.technolog_id || '' else
				(case when smr.partimer_id is not null then smr.partimer_id || '' else
					(case when smr.partner_id is not null then smr.partner_id || '' else
						(case when smr.beauty_consultant_id is not null then smr.beauty_consultant_id end) end) end ) end ) = usr.id || ''
left join seminar_types as smt ON smr.seminar_type_id = smt.id
order by 1