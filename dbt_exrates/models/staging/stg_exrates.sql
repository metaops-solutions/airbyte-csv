select 
    country,
    currency,
    currency_code, 
    currency_units_per_1, 
    TO_DATE(start_date, 'DD/MM/YYYY') as start_date,
    TO_DATE(end_date, 'DD/MM/YYYY') as end_date, 
    _ab_source_file_url as source_file_url 
from {{ source('exrates', 'exrates') }} 