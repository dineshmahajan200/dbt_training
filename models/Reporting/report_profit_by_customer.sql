select customerid,
customername,
segment,
country,
state,
sum(orderprofit) as customerprofit
from {{ ref('stg_orders') }}
group by customerid,
customername,
segment,
country,
state