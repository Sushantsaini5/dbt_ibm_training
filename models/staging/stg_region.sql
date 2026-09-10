with region as(
select
r_regionkey,
r_name as name,
r_comment
from {{source('src','regions')}}
)

select * from region