select distinct (drm_name)  from drm 
union
select 'ALL'
from drm 
order by drm_name asc