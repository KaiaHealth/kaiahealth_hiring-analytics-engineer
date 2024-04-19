select
    date_part('HOUR', timestamp) as hour,
    sum(cost/100) as sum_cost
from raw_facebook_ads
group by 1
