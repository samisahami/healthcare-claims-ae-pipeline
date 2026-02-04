{% macro raw_claims_relation() %}
    {{ return(var('raw_claims_table', 'raw_claims')) }}
{% endmacro %}
