select
    name,
    count(*) as num_activities
from {{ ref('raw_user_events') }} as ue
inner join {{ ref('raw_users') }} as u on ue.uid = u.id
group by name
having num_activities >= 8
