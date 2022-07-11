{{ config(materialized='table') }}

select 
    distinct column1 as product_id, 
    brandname as brand_name  
from public.ecommerce 
where brandname != 'Nan'
    order by brand_name, product_id asc
