
select 
	product_id, 
	brand_name, 
	sell_price::float as sell_price, 
	sell_price::float - (sell_price::float * discount_price) as discounted_sell_price
from 
	{{ ref('stg_brand') }}
join {{ ref('stg_prices') }}
using(product_id, brand_name)
