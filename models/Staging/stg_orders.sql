select o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ordercostprice,
o.ordersellingprice,
o.ordersellingprice-o.ordercostprice as orderprofit,
c.customerid,
c.customername,
c.segment,
c.country,
c.state,
p.productid,
p.category,
p.productname,
p.subcategory
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customers') }} as c 
on o.customerid=c.customerid
left join {{ ref('raw_products') }} as p
on o.productid=p.productid