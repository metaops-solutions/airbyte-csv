{% test airbyte_errors(model, column_name) %}

select {{ column_name }}->>'errors' AS errors from {{ model }} where  {{ column_name }}->>'errors'::text != '[]'
{% endtest %}

