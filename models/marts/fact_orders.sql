with
    customers as (
        select *
        from {{ ref("dim_customers") }}
    )

    , orders as (
        select *
        from {{ ref("stg_orders") }}
    )

    ,   category as (
        select *
        from {{ ref("dim_category") }}
    )

    ,   product as (
        select *
        from {{ ref("dim_product") }}
    )

    ,   suppliers as (
        select *
        from {{ ref("dim_suppliers") }}
    )

    select *
    from customers

