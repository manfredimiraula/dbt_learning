select 
	distinct column1 as product_id, 
	brandname as brand_name,
	cast (sellprice as float) as sell_price, 
	cast (case when discount = 'Nan' then '0' else 
		(case 
			when discount = '5% off' then '0.05'
			when discount = '10% off' then '0.1'
			when discount = '15% off' then '0.15'
			when discount = '20% off' then '0.2'
			when discount = '30% off' then '0.3'
			when discount = '50% off' then '0.5' 
			when discount = '60% off' then '0.6'
			when discount = '65% off' then '0.65'
			when discount = '70% off' then '0.7'
		end)	 
	end as float) as discount_price
from public.ecommerce where brandname != 'Nan'
order by brandname, product_id asc
