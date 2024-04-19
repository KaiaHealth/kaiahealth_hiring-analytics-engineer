select
    uid,
    count(*) as num_activities
from raw_user_events
group by uid
having num_activities >= 8
