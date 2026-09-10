
with cust as (
    select * from {{ ref('stg_customers') }}
),

nation as (
    select * from {{ ref('stg_nations') }}
),

region as (
    select * from {{ ref('stg_region') }}
)

select 
    cust.* exclude (comment) rename name as cust_name,
    nation.name as nation_name,
    region.r_name as region_name
from cust
join nation 
    on cust.nation_id = nation.nation_id
join region 
    on nation.region_id = region.r_regionkey
