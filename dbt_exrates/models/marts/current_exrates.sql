
SELECT 
    exrates.country as country,
    exrates.currency as currency,
    exrates.currency_code as currency_code, 
    exrates.currency_units_per_1 as currency_units_per_1,
    exrates.start_date as start_date, 
    exrates.end_date as end_date,
    exrates.source_file_url as source_file_url
FROM {{ ref('stg_exrates') }} as exrates 
where 
    exrates.start_date = (
        SELECT 
            MAX(exrates1.start_date) 
        from {{ ref('stg_exrates') }} as exrates1 
        where 
            exrates1.currency_code=exrates.currency_code
            )
