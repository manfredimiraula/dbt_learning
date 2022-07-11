select 
	distinct column1 as product_id, 
	brandname as brand_name,
	deatils as details,
	mrp, 
	sizes, 
	category
from public.ecommerce where brandname != 'Nan'
order by brandname, product_id asc

