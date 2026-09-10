
with customer as(
select C_CUSTKEY as customer_id,
	C_NATIONKEY as nation_id,
	C_NAME as name,
	C_ADDRESS as address,
	C_PHONE as phone_number ,
	C_ACCTBAL as account_balance,
	C_MKTSEGMENT as market_segment,
	C_COMMENT as comment
from {{source('src','customers')}})

select * from customer