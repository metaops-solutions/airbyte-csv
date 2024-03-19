{% test airbyte_import_count(model, column_name) %}
select count(*),{{ column_name }} from {{ model }} group by {{ column_name }} having count(*) < 160
{% endtest %}

