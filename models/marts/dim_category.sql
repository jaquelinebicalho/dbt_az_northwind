with
    dim_category as (
        select
            {{ dbt_utils.generate_surrogate_key(['category_id', 'category_name']) }} as sk_category
            , *
        from {{ref("stg_categories")}}
    )

select *
from dim_category