-- Killer recruiter details
with cte as (select *
from person p
join drivers_license dl 
on p.license_id = dl.id
join income i
on i.ssn = p.ssn
join facebook_event_checkin e
on e.person_id = p.id
where hair_color = 'red' and car_make = 'Tesla' and height between 65 and 67)
select name, count(*)
from cte
group by name;
              
