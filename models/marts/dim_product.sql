with
    dim_product as (
        select
            {{ dbt_utils.generate_surrogate_key(['product_id', 'product_name']) }} as sk_product
            , *
        from {{ref("stg_products")}}
    )

select *
from dim_product