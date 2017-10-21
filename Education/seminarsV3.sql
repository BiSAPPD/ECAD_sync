select sme.id, 
(case when sme.loreal_former_id is not null then 'LP' else
	(case when sme.matrix_former_id is not null then 'MX' else
		(case when sme.kerastase_former_id is not null then 'KR' else
			(case when sme.redken_former_id is not null then 'RD' end) end) end) end) as brand,
(case when sme.loreal_former_id is not null then sme.loreal_former_id else
	(case when sme.matrix_former_id is not null then sme.matrix_former_id else
		(case when sme.kerastase_former_id is not null then sme.kerastase_former_id else
			(case when sme.redken_former_id is not null then sme.redken_former_id end) end) end) end) as id_v2,			
sme.seminar_id, smr."name", sme.studio_id, trn."name", sme.educator_id, sme.started_at, sme.salon_id,  sme.is_closed, usr.last_name || ' ' || usr.first_name
from seminar_events as sme
left join seminars as smr on sme.seminar_id = smr.id
left join training_centers as trn on sme.studio_id = trn.id
left join users as usr on sme.educator_id = usr.id
order by sme.loreal_former_id, sme.matrix_former_id, sme.kerastase_former_id, sme.redken_former_id
