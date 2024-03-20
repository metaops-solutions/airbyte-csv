SELECT 
    DISTINCT currency_code, country, currency 
FROM {{ source('exrates', 'exrates') }} 