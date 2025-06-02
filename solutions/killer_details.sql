-- Killer details
select * 
from get_fit_now_member as m
join get_fit_now_check_in as ci 
on m.id = ci.membership_id
join person as p
on p.id = m.person_id
join drivers_license dl
on p.license_id = dl.id
where m.id like '48Z%' and ci.check_in_date = 20180109
