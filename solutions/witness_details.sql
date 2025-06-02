/*SELECT * 
FROM crime_scene_report
where type = 'murder' and date = 20180115 and city = 'SQL City';*/

 -- Witness details
with cte as (select id, name, address_number, address_street_name
from person
where address_street_name = 'Northwestern Dr' or (name like 'Annabel%' and address_street_name = 'Franklin Ave')
order by address_number desc)
select * 
from interview as i
join cte 
on i.person_id = cte.id 
where person_id = 14887 or person_id = 16371
